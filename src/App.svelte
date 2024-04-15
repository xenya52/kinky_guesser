<script>
  import Questionnaire from "./components/Questionnaire.svelte"
  import { Button } from "flowbite-svelte"
  import { Route, Router, Link } from "svelte-routing";
  import { DarkMode } from 'flowbite-svelte';

  let path = location.pathname;
</script>
<div class="body">
  <Router>
    <div  on:click={() => (path = location.pathname)}>
      <Link to="/"><Button>Startpage</Button></Link>
      <Link to="/questionnaire"><Button>Questionnaire</Button></Link>
      <DarkMode />
    </div>
      You are here: <code>{path}</code>
      <Route path="/">
        <h1>Welcome Home!</h1>
      </Route>
  
      <Route path="/questionnaire" component={Questionnaire} />
  </Router>    
</div>
<style>
  .body{
    border: 1px solid red;
    margin-left: 15%;
    margin-right: 15%;
    margin-top: 5%;
  }
</style>