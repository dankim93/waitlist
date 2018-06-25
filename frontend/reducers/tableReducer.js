import {
  RECEIVE_TABLES,
  RECEIVE_TABLE,
  REMOVE_TABLE
} from '../actions/tableActions.js';
import merge from 'lodash/merge';

const tableReducer = (state = {}, action) => {
  Object.freeze(state);
  let newState = merge({}, state);

  switch(action.type) {
    case RECEIVE_TABLES:
      return action.tables;
    case RECEIVE_TABLE:
      newState[action.table.id] = action.table;
      return newState;
    case REMOVE_TABLE:
      delete newState[action.table.id];
      return newState;
    default:
      return state;
  }
};

export default tableReducer;
