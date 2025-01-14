<script lang="ts">
	import Header from './Header.svelte';
	import '../app.css';

	let { children } = $props();
</script>

<div class="flex min-h-screen flex-col space-y-8 bg-slate-300">
	<Header />

	<main class="flex-grow">
		{@render children()}
	</main>

	<footer class="bg-rounded-lg flex items-center justify-center bg-slate-500 p-4">
		<div class="text-slate-800">© 2025 Joseph Lassuy</div>
		<div>
			<a href="https://github.com/joseph-lassuy">Github</a>
		</div>
	</footer>
</div>
