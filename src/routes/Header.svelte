<script lang="ts">
	import { page } from '$app/state';
</script>

<header
	class="relative flex w-full items-center bg-slate-500 p-4 text-xl font-semibold text-slate-900"
>
	<div class="absolute left-4">
		<h1>Joseph</h1>
	</div>
	<nav class="flex w-full justify-center">
		<ul class="flex items-center space-x-4 text-lg text-blue-800">
			<li aria-current={page.url.pathname === '/' ? 'page' : undefined}>
				<a class="text-blue-800" href="/">Home</a>
			</li>
			<li aria-current={page.url.pathname === '/projects' ? 'page' : undefined}>
				<a class="text-blue-800" href="/projects">Projects</a>
			</li>
		</ul>
	</nav>
	<div class="absolute right-4">
		<a
			href="https://github.com/joseph-lassuy"
			class="flex items-center gap-2 transition-colors hover:text-gray-700"
		>
			<img src="/github-mark.svg" alt="GitHub" class="h-6 w-6" />
			Github
		</a>
	</div>
</header>
