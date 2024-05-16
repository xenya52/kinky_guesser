<script>
    import { Button } from 'flowbite-svelte';

    import Statement from "./Statement.svelte";
    import Result from '../Result.svelte';

    import config from "../../../config/config.json"
import { Link } from 'svelte-routing';

    let statements = []
    config.statements.forEach((statement) => {
        statements.push({ ...statement, value: 5 })
    })
    let showResult = false
</script>

<div class="statement-head">
    <p>Strongly Disagree</p>
    <p>Strongly Agree</p>
</div>
<div class="test">
    {statement.value}
    <Statement description={statement.description} bind:value={statements.value}/>
</div>
<!-- TODO!!!! -->
<!-- https://svelte.dev/repl/02641874e27d47919e6b7c844ca3a7d1?version=3.30.0 -->
<Link To='/result'><Button>Submit</Button></Link>
<!-- <Button on:click={() => (showResult = !showResult)} style="float: right">Submit</Button> -->
<!-- <Result statements={statements}/> -->

<style>
    .statement-head{
        display: grid;
        grid-template-columns: auto auto;
    }
    .statement-head p{
        background-color: #c026d3;
        font-size: 15px;
        padding: 2px;
        border-radius: 2rem;
        margin-left: 20%;
        margin-right: 20%;
        text-align: center;
    }
</style>