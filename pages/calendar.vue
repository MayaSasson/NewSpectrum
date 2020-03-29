<template>
  <v-layout
    column
    justify-center
    align-center
  >
    <categories-bar />
    <v-calendar
        class="calendar"
    />
  </v-layout>
</template>

<script lang="ts">
import Vue from 'vue';
import CategoriesBar from '@/components/CalendarComponents/categoriesBar.vue';
import { allEvents } from '@/queries/Events';
import { Event } from '@/models/Event.ts';

export default Vue.extend({
    components: {
        CategoriesBar
    },
    apollo: {
        allEvents: {
            query: allEvents
        }
    },
    computed: {
        events() : Event[] {
            return this.$data.allEvents.nodes.map((event: any) => {
                return {
                    id: event.id,
                    startDate: event.startDate,
                    endDate: event.endDate,
                    title: event.title,
                    category: {
                        id: event.category.id,
                        title: event.category.title,
                        color: event.category.color
                    }
                }
            })
        }
    }
})
</script>

<style scoped>
    .calendar {
        width: 90%;
    }
</style>
