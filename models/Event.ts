import { Category } from './Category';

export interface Event {
    id: number;
    title: string;
    startDate: Date;
    endDate: Date;
    category: Category;
}