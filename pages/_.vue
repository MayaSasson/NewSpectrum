<!-- This page is redirecting any not found path to the claendar path -->

<template>
</template>

<script>
export default {
  asyncData ({ redirect }) {
    return redirect('/calendar')
  },
}
</script>
