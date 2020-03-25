<template>
  <v-app>
    <v-content>
      <h1>היי</h1>
      <h1>hey</h1>
      <v-container>
        <nuxt />
      </v-container>
    </v-content>
  </v-app>
</template>

<script>
export default {
  data () {
    return {
      clipped: false,
      fixed: false,
    }
  }
}
</script>

<style scoped>
#app {
  background-color: rgb(245,242,242);
  font-weight: lighter;
}
</style>