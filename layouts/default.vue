<template>
  <v-app>
    <TopToolbar/>
    <v-content>
      <v-container>
        <nuxt />
      </v-container>
    </v-content>
  </v-app>
</template>

<script>
import TopToolbar from '~/components/TopToolbar/TopToolbar'
export default {
  data () {
    return {
      clipped: false,
      fixed: false,
    }
  },
  components: {
    TopToolbar
  }
}
</script>

<style scoped>
#app {
  background-color: rgb(245,242,242);
  direction: rtl;
}
</style>