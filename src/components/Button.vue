<script setup>
	defineProps(['label', 'handle'])
</script>

<template>
	<div class="button" @click="buttonHandler">{{ label }}</div>
</template>

<script>
import { invoke } from '@tauri-apps/api'

export default {
	props: ['handle'],
	methods: {
		buttonHandler() {
			invoke(this.handle).then((response) => console.log(response))
		}
	}
}
</script>

<style lang="scss">
@import "../style.scss";

div.button {
	color: $foreground;
	background-color: lighten($background, 10%);

	display: flex;
	flex: 1 1 auto;
	justify-content: center;
	align-items: center;

	padding: 0.5em;
	border: 0.25em solid;
	border-color: darken($accent-1, 10%);
	border-radius: 1em;
	margin: 0.5em;

	&:hover {
		color: darken($foreground, 10%);
		border-color: darken($accent-1, 20%);
	}
}
</style>