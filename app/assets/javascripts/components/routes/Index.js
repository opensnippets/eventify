import React from "react";
import { BrowserRouter as Router, Route, Switch } from "react-router-dom";
import Events from "../components/events/Events";

class Index extends Component (
  <Router>
    <Switch>
      <Route path="/" exact component={Events} />
    </Switch>
  </Router>
);

export default Index;