<script>
    import { Route, Router, Link } from "svelte-routing";
    import { Button, DarkMode } from "flowbite-svelte"
</script>
<div on:click={() => (path = location.pathname)}>
  <Link to="/"><Button>Startpage</Button></Link>
  <Link to="/questionnaire"><Button>Questionnaire</Button></Link>
  <Button href="https://www.youtube.com/watch?v=xvFZjo5PgG0">Battle Pass</Button>
  <DarkMode/>
</div>