<script>
  import { VisSingleContainer, VisDonut, VisTooltip, VisBulletLegend } from '@unovis/svelte'

  export let results = [] //objArray input for the chart
  console.log(results)
  const value = (item) => {
    return item.value
  }

  const triggers = (item) => {
    return item.label
  }

</script>
<VisSingleContainer bind:data={results}>
  <VisTooltip {triggers}/>
  <VisDonut value={value}/>
  <VisBulletLegend items={results}/>
</VisSingleContainer>