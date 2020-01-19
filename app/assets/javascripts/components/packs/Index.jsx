import React from "react";
import { render } from "react-dom";
import Events from "../components/events/Events";

document.addEventListener("DOMContentLoaded", () => {
  render(
    <Events />,
    document.body.appendChild(document.createElement("div"))
  );
});