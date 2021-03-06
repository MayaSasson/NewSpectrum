import gql from 'graphql-tag';

export const AllEvents = gql`
query AllEvents {
    allEvents {
      nodes {
        id
        startDate
        endDate
        title
        category : categoryByCategory {
          id
          title
          color
        }
      }
    }
  }  
`