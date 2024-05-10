<script>
  import TopBar from "./components/TopBar.svelte"
  import Questionnaire from "./pages/Questionnaire/Questionnaire.svelte"
  import Result from "./pages/Result.svelte"
  import Home from "./pages/Home.svelte"
  import { Route, Router, Link } from "svelte-routing";
  let path = location.pathname;
</script>

<Router>
  <TopBar />
  <div class="body">
    <Route path="/" component={Home} />
    <Route path="/questionnaire" component={Questionnaire} />
    <Route path="/Result" component={Result} />
  </div>
</Router>
<style>
  .body{
    border: 2px solid yellow;
    margin-left: 15%;
    margin-right: 15%;
    margin-top: 5%;
    justify-content: center;
  }
</style>