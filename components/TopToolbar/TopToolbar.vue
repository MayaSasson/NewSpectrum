<template>
    <div class="header">
        <img src='~/assets/images/logo.png'>
        <v-list class="tabs" flat>
            <v-list-item
            v-for="tab in tabs"
            :key="tab.title"
            :to="tab.href"
            router
            exact
            >
                <v-icon class="tab" large>{{ tab.icon }}</v-icon>
            </v-list-item>
        </v-list>
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
          title: 'calendar',
          href: '/calendar'
        },
        {
          icon: 'mdi-download',
          title: 'download',
          href: '/download'
        },
        {
          icon: 'mdi-message-text',
          title: 'messages',
          href: '/messages'
        },
        {
          icon: 'mdi-food',
          title: 'orderfood',
          href: '/orderfood'
        },
        {
          icon: 'mdi-cart',
          title: 'shopping',
          href: '/shopping'
        }
    ];
    return {
      tabs,
    }
  }
}
</script>

<style lang="css" scoped>
.header {
  display: flex;
  justify-content: space-between;
}
.tabs {
  display: flex;
}
.tab {
  margin: auto 0 !important;
  border-radius: 50%;
  border: black solid 0.5px;
  padding: 3vh;
}
.tab:hover {
  background-color: lightgray;
}
</style>
