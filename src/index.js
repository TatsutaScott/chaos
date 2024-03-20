import p5 from "p5";
import { createDevice, TimeNow, MessageEvent } from "@rnbo/js";
import patcher from "./export/patch.export.json";
import { Bubble, AnimationQueue } from "./animation";
import {
  cursor,
  point_plot,
  amp_plot,
  dist_plot,
  numbers,
  controls,
} from "./ui_elements";

let queue,
  context,
  outputNode,
  device,
  point_arr,
  dist_arr,
  amp_arr = [];

new p5((p) => {
  p.preload = async () => {
    //create a new HTML audio context and then set the output node
    context = new AudioContext();
    outputNode = context.createGain();
    outputNode.connect(context.destination);

    // Create a new RNBO device and connect to the HTML output node
    device = await createDevice({ context, patcher });
    device.node.connect(outputNode);

    // The context needs to be clicked in order to start so this starts audio
    document.body.onclick = () => context.resume();

    // Subscribe method executes code whenever a message is received from the RNBO device
    // Switch statement updates parameters based on the outlet of the RNBO device
    device.messageEvent.subscribe((e) => {
      switch (e.tag) {
        case "out3":
          point_arr = e.payload;
          break;
        case "out4":
          dist_arr = e.payload;
          break;
        case "out5":
          amp_arr.push(e.payload[0]);
          if (amp_arr.length > 50) {
            amp_arr.shift();
          }
          break;
        default:
          console.log(e);
      }
    });
  };

  p.setup = () => {
    queue = new AnimationQueue();
    p.createCanvas(window.innerWidth, window.innerHeight);
    p.textFont("Courier New", 10);
  };

  p.draw = () => {
    p.background(200);
    queue.update(p);
    // controls(p, 20, p.height - 90);

    try {
      setParam("x", p.mouseX / p.width);
      setParam("y", p.mouseY / p.height);
      sendMessage("get_amp", "bang");

      ui(p, 150, 200, point_arr, dist_arr, amp_arr);

      // numbers(
      //   p,
      //   point_arr,
      //   dist_arr,
      //   p.height - 100,
      //   20,
      //   p.width - (p.height - 120) - 20
      // );
      // dist_plot(
      //   p,
      //   dist_arr,
      //   p.height - 100,
      //   (dist_arr.length / 4) * 15 + 40,
      //   p.width - (p.height - 80),
      //   100
      // );
    } catch (err) {
      console.log(err);
    }
  };

  p.mousePressed = () => {
    queue.add(new Bubble(p.mouseX, p.mouseY));
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

function ui(p5, dark, light, points, dists, amps) {
  const h = p5.height;
  const w = p5.width;
  const settings = { p5, dark, light };

  point_plot(settings, points, 0, 0, h * 0.8, h * 0.8, 20);
  amp_plot(settings, amps, 0, h * 0.8, h * 0.8, h * 0.2, 20);

  cursor(settings);
}
