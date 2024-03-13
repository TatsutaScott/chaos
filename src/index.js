import p5 from "p5";
import { createDevice } from "@rnbo/js";
import patcher from "./export/patch.export.json";
import { Bubble, AnimationQueue } from "./animation";
import { pointer, points, distances, controls } from "./ui_elements";

let q, context, outputNode, device, pointsArray, distancesArray;

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
        pointsArray = ev.payload;
      }
      if (ev.tag == "out4") {
        distancesArray = ev.payload;
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

    try {
      setParam("x", p.mouseX / p.width);
      setParam("y", p.mouseY / p.height);
      points(p, pointsArray);
      distances(p, distancesArray);
    } catch (err) {
      console.log(err);
    }

    controls(p);
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
