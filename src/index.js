import p5 from "p5";
import { createDevice, TimeNow, MessageEvent } from "@rnbo/js";
// import patcher from "./export/chaos.export.json";
import patcher from "./export/chaos_v2.2.export.json";

import { Bubble, AnimationQueue } from "./animation";
import {
  cursor,
  point_plot,
  amp_plot,
  dist_plot,
  details,
  info,
  extra_info,
} from "./ui_elements";

let queue,
  context,
  outputNode,
  device,
  point_arr,
  dist_arr,
  master = 1,
  amp_arr = [];

new p5((p) => {
  p.preload = async () => {
    rnbo_setup();
  };

  p.setup = () => {
    queue = new AnimationQueue();
    p.createCanvas(window.innerWidth, window.innerHeight);
    p.textFont("Courier New", 10);
  };

  p.draw = () => {
    p.background(200);
    queue.update(p);

    try {
      setParam("x", p.mouseX / p.width);
      setParam("y", p.mouseY / p.height);
      setParam("master", 1);
      sendMessage("get_amp", "bang");
    } catch (err) {
      console.log(err);
    }

    ui(p, 150, 200, point_arr, dist_arr, amp_arr, false);
  };

  p.mousePressed = () => {
    queue.add(new Bubble(p.mouseX, p.mouseY));
    setParam("click", 1);
    setParam("click", 0);
  };

  p.keyPressed = (v) => {
    //mute / unmute on space bar
    if (v.keyCode === 32) {
      if (master == 0) {
        master = 1;
        setParam("master", 1);
      } else {
        master = 0;
        setParam("master", 0);
      }
    } else if (v.keyCode === 82) {
      rnbo_setup();
    }
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

// all of the ui components
function ui(p5, dark, light, points, dists, amps, dev) {
  const h = p5.height;
  const w = p5.width;
  const settings = { p5, dark, light, dev };
  const left_w = h * 0.8; //width of the left column

  try {
    //left hand column
    point_plot(settings, points, 0, 0, left_w, left_w, 20);
    amp_plot(settings, amps, 0, left_w, left_w, h - left_w, 20);

    //right hand column
    details(settings, points, dists, 5, left_w, 0, w - left_w, h / 2, 20);
    dist_plot(settings, dists, left_w, h / 2, w - left_w, h / 4, 20);
    extra_info(
      settings,
      points,
      dists,
      amps,
      left_w,
      h * 0.75,
      (w - left_w) / 2,
      h / 4,
      20
    );
  } catch (e) {
    console.log(e);
  }

  info(
    settings,
    left_w + (w - left_w) / 2,
    h * 0.75,
    (w - left_w) / 2,
    h / 4,
    20
  );
  cursor(settings);
}

//set up the rnbo device. used on initialization and on reset
async function rnbo_setup() {
  if (context) context.close();
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
        if (amp_arr.length > 75) {
          amp_arr.shift();
        }
        break;
      default:
        console.log(e);
    }
  });
}
