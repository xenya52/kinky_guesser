<script>
    import { Button } from 'flowbite-svelte';

    import Statement from "./Statement.svelte";
    import Result from '../Result.svelte';

    import config from "../../../config/config.json"

    let statements = []
    config.statements.forEach((statement) => {
        statements.push({ ...statement, value: 5 })
    })
    let showResult = false
</script>
{#if !showResult}
    <div class="statement-head">
        <p>Strongly Disagree</p>
        <p>Strongly Agree</p>
    </div>
    {#each statements as statement}
    <div class="test">
        {statement.value}
        <Statement description={statement.description} bind:value={statement.value}/>
    </div>    
    {/each}
    <Button on:click={() => (showResult = !showResult)} style="float: right">Submit</Button>
{:else}
    <Result statements={statements}/>
{/if}
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