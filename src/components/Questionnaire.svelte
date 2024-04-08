<script>
    import { Button } from 'flowbite-svelte';

    import Statement from "./Statement.svelte";
    import Result from './Result.svelte';

    import config from "../../config/config.json"

    let statements = []
    config.statements.forEach((statement) => {
        statements.push({ ...statement, value: 5 })
    })
    let showResult = false
</script>

{#if !showResult}
    <div>
        <p style="display: inline; float: left;">Strongly Disagree</p>
        <p style="display: inline; float: right; ">Strongly Agree</p>
    </div>
    {#each statements as statement}
        {statement.value}
        <Statement description={statement.description} bind:value={statement.value}/>
    {/each}

{:else}
    <Result statements={statements}/>
{/if}

<Button on:click={() => (showResult = !showResult)} style="float: right">Submit</Button>

<style>
    p {
        background-color: #c026d3;
        font-size: 2vw;
        padding: 2px;
        border-radius: 2rem;
    }
</style>