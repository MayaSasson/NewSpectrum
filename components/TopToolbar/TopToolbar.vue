<template>
    <div class='top-toolbar'>
        <img src='~/assets/images/logo.png'>
        <div class='tabs'>
            <nuxt-link
            v-for='tab in tabs'
            :key='tab.href'
            :to='tab.href'
            router
            exact
            class='tab'
            active-class='active-tab'
            >
                <v-icon color='black' size='5vh'>{{ tab.icon }}</v-icon>
            </nuxt-link>
        </div>
    </div>
</template>

<script lang='ts'>
import Tab from '~/models/Tab'

export default {
  data () {
    const tabs : Tab[] = 
    [
      {
        icon: 'mdi-calendar-blank',
        href: '/calendar'
      },
      {
        icon: 'mdi-download',
        href: '/download'
      },
      {
        icon: 'mdi-message-text',
        href: '/feed'
      },
      {
        icon: 'mdi-food',
        href: '/orderfood'
      },
      {
        icon: 'mdi-cart',
        href: '/shopping'
      }
    ];
    return {
      tabs,
    }
  }
}
</script>

<style lang='css' scoped>
.top-toolbar {
  display: flex;
  justify-content: space-between;
  margin-top: 1vh;
}
.tabs {
  display: flex;
}
.tabs a {
  text-decoration: none;
}
.tab {
  margin: auto 1vw;
  border-radius: 50%;
  border: black solid 0.5px;
  padding: 2vh;
}
.tab:hover {
  background-color: lightgray;
}
.active-tab {
  background-color: lightgray;
}
</style>
