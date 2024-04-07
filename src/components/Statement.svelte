<script>
    import { Range, Label } from 'flowbite-svelte'


    export let description
    export let value
</script>

<Label>{description}</Label>
<Range id="range1" min="0" max="10" step="0.1" bind:value />

