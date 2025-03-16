window.p5 = require("p5");
require("p5/lib/addons/p5.sound");
import { createDevice, TimeNow, MessageEvent } from "@rnbo/js";
import patcher from "./export/chaos_v3.3.export.json";
import ScrollingWaveform from "./vis/ScrollingWaveform";
import Spectrogram from "./vis/Spectrogram";
import InstantSpectrum from "./vis/Spectrum";
import distGraph from "./vis/distGraph";
import InstantWaveform from "./vis/InstantWaveform";
import pointPlot from "./vis/pointPlot";
import cursor from "./vis/cursor";
import { Bubble, AnimationQueue } from "./vis/animation";

let context,
  outputNode,
  device,
  point_arr,
  dist_arr,
  master = false,
  waveform,
  spectrum,
  amp_arr = [],
  fft = new p5.FFT(0, 128);

window.addEventListener("mousemove", (event) => {
  try {
    setParam("x", event.clientX / window.innerWidth);
    setParam("y", event.clientY / window.innerHeight);
  } catch (err) {
    console.log(err);
  }
});
window.addEventListener("touchmove", (event) => {
  try {
    setParam("x", event.changedTouches[0].clientX / window.innerWidth);
    setParam("y", event.changedTouches[0].clientY / window.innerHeight);
  } catch (err) {
    console.log(err);
  }
});

let lastTap = 0;
const doubleTapThreshold = 300; // Maximum time (ms) between taps

window.addEventListener("touchstart", (event) => {
  const currentTime = new Date().getTime();
  const tapLength = currentTime - lastTap;

  if (tapLength < doubleTapThreshold && tapLength > 0) {
    if (e.code == "Space") {
      master = !master;
      const vol = master ? 1 : 0;
      setParam("master", vol);
    }
  }

  lastTap = currentTime;
});

window.addEventListener("pointerdown", (e) => {
  try {
    console.log(e);
    setParam("left_click", 1);
    setParam("left_click", 0);
    if (!master) {
      master = true;
      setParam("master", 1);
    }
  } catch (err) {
    console.log(err);
  }
});

window.addEventListener("keydown", (e) => {
  if (e.code == "Space") {
    master = !master;
    const vol = master ? 1 : 0;
    setParam("master", vol);
  }
});

const colors = {
  bg: 200,
  fg: 50,
  i: 50,
};

//INSTANT WAVE
const instant_wave_container = document.getElementById("instant-wave-cnv");
const instant_wave_sketch = (p) => {
  let instant_wave;
  p.setup = () => {
    const instant_wave_p5 = p.createCanvas(
      instant_wave_container.clientWidth,
      instant_wave_container.clientHeight
    );
    instant_wave_p5.parent(instant_wave_container);

    rnbo_setup(p.getAudioContext()).then((e) => {
      fft.setInput(outputNode);
      setParam("left_click", 1);
      setParam("left_click", 0);
    });

    instant_wave = new InstantWaveform(p, colors);
  };

  p.draw = () => {
    waveform = fft.waveform();
    spectrum = fft.analyze();

    if (waveform) {
      instant_wave.update(waveform);
      instant_wave.draw();
    }
  };
};

//INSTANT SPECTRUM
const instant_spec_container = document.getElementById("instant-spectrum-cnv");
const instant_spec_sketch = (p) => {
  let instant_spec;

  p.setup = () => {
    const instant_spec_p5 = p.createCanvas(
      instant_spec_container.clientWidth,
      instant_spec_container.clientHeight
    );
    instant_spec_p5.parent(instant_spec_container);

    instant_spec = new InstantSpectrum(p, colors);
  };

  p.draw = () => {
    if (spectrum) {
      instant_spec.update(spectrum);
      instant_spec.draw();
    }
  };
};

//POINT PLOT
const point_plot_container = document.getElementById("point-plot-cnv");
const point_plot_sketch = (p) => {
  p.setup = () => {
    const plot_point_p5 = p.createCanvas(
      point_plot_container.clientWidth,
      point_plot_container.clientHeight
    );
    plot_point_p5.parent(point_plot_container);

    let resizeObserver = new ResizeObserver(() => {
      p.resizeCanvas(
        point_plot_container.clientWidth,
        point_plot_container.clientHeight
      );
    });
    resizeObserver.observe(point_plot_container);
    p.textFont("monospace");
  };

  p.draw = () => {
    pointPlot(p, colors, point_arr);
  };
};

//DIST GRAPH
const distance_graph_container = document.getElementById("distance-graph-cnv");
const distance_graph_sketch = (p) => {
  p.setup = () => {
    const dist_graph_p5 = p.createCanvas(
      distance_graph_container.clientWidth,
      distance_graph_container.clientHeight
    );
    dist_graph_p5.parent(distance_graph_container);
    let resizeObserver = new ResizeObserver(() => {
      p.resizeCanvas(
        distance_graph_container.clientWidth,
        distance_graph_container.clientHeight
      );
    });
    resizeObserver.observe(distance_graph_container);
  };

  p.draw = () => {
    distGraph(p, colors, dist_arr);
  };
};

//SCROLLING SPECTRUM
const scrolling_spec_container = document.getElementById(
  "scrolling-spectrum-cnv"
);
const scroll_spec_sketch = (p) => {
  let scrolling_wave, scrolling_spec;

  p.setup = () => {
    const scrolling_spec_p5 = p.createCanvas(
      scrolling_spec_container.clientWidth,
      scrolling_spec_container.clientHeight
    );
    scrolling_spec_p5.parent(scrolling_spec_container);
    scrolling_wave = new ScrollingWaveform(p, colors);
    scrolling_spec = new Spectrogram(p, colors);
  };

  p.draw = () => {
    p.clear();
    scrolling_wave.update(waveform);
    scrolling_spec.update(spectrum);

    scrolling_spec.draw();
    scrolling_wave.draw();
  };
};

//POINT DATA
const point_data_container = document.getElementById("data-container");
let data_dom;
const update_data = () => {
  if (dist_arr) {
    const short = window.innerWidth < 700;
    if (!data_dom) {
      data_dom = [];

      for (let i = 0; i < dist_arr.length; i++) {
        if (point_arr[i * 2] && point_arr[i * 2 + 1]) {
          //   const point_string = `#${pad(i, 3)}:[${point_arr[i * 2].toFixed(
          //     2
          //   )}, ${point_arr[i * 2 + 1].toFixed(2)}] ${dist_arr[i].toFixed(2)}`;

          const data_point = document.createElement("span");
          data_point.classList.add("data");
          data_point.innerHTML = data_string(
            i,
            point_arr[i * 2],
            point_arr[i * 2 + 1],
            dist_arr[i],
            short
          );
          data_dom.push(data_point);
          point_data_container.appendChild(data_point);
        }
      }
    } else {
      for (let i = 0; i < data_dom.length; i++) {
        data_dom[i].innerHTML = data_string(
          i,
          point_arr[i * 2],
          point_arr[i * 2 + 1],
          dist_arr[i],
          short
        );
      }
    }
  }
};

const data_string = (index, x, y, d, short) => {
  if (short) {
    return `#${pad(index, 3)}: ${d.toFixed(2)}`;
  } else {
    return `#${pad(index, 3)}:[${x.toFixed(2)}, ${y.toFixed(2)}] ${d.toFixed(
      2
    )}`;
  }
};
window.addEventListener("mousemove", update_data);
window.addEventListener("touchmove", update_data);

function pad(num, size) {
  num = num.toString();
  while (num.length < size) num = "0" + num;
  return num;
}

//OVERLAY
const overlay_container = document.getElementById("overlay");
const overlay_sketch = (p) => {
  let queue;
  p.setup = () => {
    const overlay_p5 = p.createCanvas(
      overlay_container.clientWidth,
      overlay_container.clientHeight
    );
    overlay_p5.parent(overlay_container);
    queue = new AnimationQueue();
  };

  p.draw = () => {
    p.clear();
    cursor(p, colors);
    queue.update(p);
  };

  p.mousePressed = () => {
    if (queue) {
      queue.add(new Bubble(p.mouseX, p.mouseY));
    }
  };
};

function setParam(param, value) {
  const p = device.parametersById.get(param);
  p.value = value;
}

function sendMessage(tag, message) {
  const event1 = new MessageEvent(TimeNow, tag, [message]);
  device.scheduleEvent(event1);
}

window.addEventListener("load", () => {
  new p5(instant_wave_sketch);
  new p5(point_plot_sketch);
  new p5(instant_spec_sketch);
  new p5(scroll_spec_sketch);
  new p5(distance_graph_sketch);
  new p5(overlay_sketch);
});

//set up the rnbo device. used on initialization and on reset
async function rnbo_setup(ctx) {
  // if (context) context.close();
  //create a new HTML audio context and then set the output node
  context = ctx || new AudioContext();
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
    }
  });
}
