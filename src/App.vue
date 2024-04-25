<script setup>
import Button from "./components/Button.vue"
</script>

<template>
  <div class="centred">
    <h1 id="title">
      Overlander
    </h1>
    <Button label="New" handle="new"/>
    <Button label="Open" handle="open"/>
    <Button label="Settings" handle="settings"/>
  </div>
</template>

<style lang="scss">
@import "./style.scss";

h1#title {
  font-size: 8em;
}
</style>