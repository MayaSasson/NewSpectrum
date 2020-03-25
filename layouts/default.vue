<template>
  <v-app>
    <v-content>
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