<template>
  <v-layout
    column
    justify-center
    align-center
  >
    <categories-bar
        @nextPressed="$refs.calendar.next()"
        @prevPressed="$refs.calendar.prev()"
     />
    <v-calendar
        v-model="startTimeCalendar"
        class="calendar"
        :events="calendarEvents"
        event-overlap-mode="stack"
        :event-color="getEventColor"
        event-text-color="black"
        ref="calendar"
    />
  </v-layout>
</template>

<script lang="ts">
import Vue from 'vue';
import CategoriesBar from '@/components/CalendarComponents/categoriesBar.vue';
import { AllEvents } from '@/queries/Events';
import Event from '@/models/Event.ts';

interface CalendarEvent {
    name: string; 
    start: string;
    end: string;
    color: string;
};

export default Vue.extend({
    data() {
        return {
            startTimeCalendar: ''
        };
    },
    components: {
        CategoriesBar
    },
    apollo: {
        allEvents: {
            query: AllEvents
        }
    },
    computed: {
        events() : Event[] {
            if (this.$data.allEvents !== undefined) {
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
                });
            } else {
                return [];
            }
        }, 
        calendarEvents(): CalendarEvent[] {
            return this.events.map((event: Event) => {
                return {
                    name: event.title, 
                    start: this.formatDate(new Date(event.startDate)),
                    end: this.formatDate(new Date(event.endDate)),
                    color: event.category.color
                }
            });
        }
    }, 
    methods: {
        getEventColor(event: CalendarEvent): string {
            return event.color
        },
        formatDate(dateToFormat: Date): string {
            return `${dateToFormat.getFullYear()}-${dateToFormat.getMonth() + 1}-${dateToFormat.getDate()} ${dateToFormat.getHours()}:${dateToFormat.getMinutes()}`;
        }
    }
})
</script>

<style scoped>
    .calendar {
        width: 90%;
    }
</style>
