<script>
    import { Button } from 'flowbite-svelte';

    import Statement from "./Statement.svelte";
    import config from "../../config/config.json"

    let statements = []
    config.statements.forEach((statement) => {
        let tmp = { 
            description: statement.description, 
            label: statement.label, 
            value: 5
        }
        
        statements.push(tmp)
    })
</script>


<div>
    <p style="display: inline;">Strongly Disagree</p>
    <p style="display: inline; float: right; ">Strongly Agree</p>
</div>
{#each statements as statement}
    {statement.value}
    <Statement description={statement.description} bind:value={statement.value}/>
{/each}
<Button style="float: right">Submit</Button>

