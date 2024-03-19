import p5 from "p5";
import { createDevice, TimeNow, MessageEvent } from "@rnbo/js";
import patcher from "./export/patch.export.json";
import { Bubble, AnimationQueue } from "./animation";
import {
  pointer,
  point_plot,
  amp_plot,
  dist_plot,
  numbers,
  controls,
} from "./ui_elements";

let q,
  context,
  outputNode,
  device,
  point_arr,
  dist_arr,
  ampArray = [];

new p5((p) => {
  p.preload = async () => {
    context = new AudioContext();

    outputNode = context.createGain();
    outputNode.connect(context.destination);

    device = await createDevice({ context, patcher });
    device.node.connect(outputNode);

    document.body.onclick = () => context.resume();

    device.messageEvent.subscribe((ev) => {
      if (ev.tag == "out3") {
        point_arr = ev.payload;
      }
      if (ev.tag == "out4") {
        dist_arr = ev.payload;
      }
      if (ev.tag == "out5") {
        ampArray.push(ev.payload[0]);
        if (ampArray.length > 50) {
          ampArray.shift();
        }
      }
    });
  };

  p.setup = () => {
    q = new AnimationQueue();
    p.createCanvas(window.innerWidth, window.innerHeight);
    p.textFont("Courier New", 10);
  };

  p.draw = () => {
    p.background(200);

    q.animate(p);
    q.clean();
    controls(p, 20, p.height - 90);
    try {
      setParam("x", p.mouseX / p.width);
      setParam("y", p.mouseY / p.height);
      sendMessage("get_amp", "bang");

      point_plot(p, point_arr, 20, 20, p.height - 140, p.height - 140);
      amp_plot(p, ampArray, 250, p.height - 80, p.height - 370, 70);
      numbers(
        p,
        point_arr,
        dist_arr,
        p.height - 100,
        20,
        p.width - (p.height - 120) - 20
      );
      dist_plot(
        p,
        dist_arr,
        p.height - 100,
        (dist_arr.length / 4) * 15 + 40,
        p.width - (p.height - 80),
        100
      );
    } catch (err) {
      console.log(err);
    }

    pointer(p);
  };

  p.mousePressed = () => {
    q.add(new Bubble(p.mouseX, p.mouseY));

    setParam("click", 1);
    setParam("click", 0);
  };
});

function setParam(param, value) {
  const p = device.parametersById.get(param);
  p.value = value;
}

function sendMessage(tag, message) {
  const event1 = new MessageEvent(TimeNow, tag, [message]);
  device.scheduleEvent(event1);
}
