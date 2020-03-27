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

<script lang='ts'>
import TopToolbar from '~/components/TopToolbar/TopToolbar.vue';
import { Context } from '@nuxt/types';

export default {
   middleware: [
    ({ redirect, route } : Context) => {
        route.path === '/' && redirect('/calendar');
    },
  ],
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