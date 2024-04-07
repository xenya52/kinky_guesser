<script>
  import Questionnaire from "./components/Questionnaire.svelte"
  import { Button } from "flowbite-svelte"
  import { Route, Router, Link } from "svelte-routing";
  let path = location.pathname;
</script>

<Router>
  <div on:click={() => (path = location.pathname)}>
    <Link to="/"><Button>Startpage</Button></Link>
    <Link to="/questionnaire"><Button>Questionnaire</Button></Link>
  </div>
    You are here: <code>{path}</code>
    <Route path="/">
      <h1>Welcome Home!</h1>
    </Route>

    <Route path="/questionnaire" component={Questionnaire}>
      <h1>Welcome in Questionnaire!</h1>
    </Route>
</Router>