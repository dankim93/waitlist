export const RECEIVE_TABLES = 'RECEIVE_TABLES';
export const RECEIVE_TABLE = 'RECEIVE_Table';
export const REMOVE_TABLE = 'REMOVE_TABLE';
// export const AVAILABLE_TABLES = 'AVAILABLE_TABLES';

export const receiveTables = tables => ({
  type: RECEIVE_TABLES,
  tables
});

export const receiveTable = table => ({
  type: CREATE_TABLE,
  table
});

export const removeTable = table => ({
  type: REMOVE_TABLE,
  table
});

export const fetchTables = () => dispatch => ({
  let getURL = '/api/tables';

  fetch(getURL, {
    method: 'GET'
  })
  .then(res => {
    res.json();
  })
  .then(tables => {
    dispatch(receiveTables(tables));
  });
});

export const createTable = table => dispatch => ({
  let postURL = '/api/tables';

  fetch(postURL, {
    method: 'POST',
    body: table
  })
  .then(res => {
    tables.json();
  })
  .then(table => {
    dispatch(receiveTable(table.json()));
  }
});

export const deleteTable = id => dispatch => ({
  let deleteURL = `/api/tables/${id}`;

  fetch(deleteURL, {
    method: 'DELETE'
  })
  .then(res => res.json())
  .then(table => dispatch(removeTable(table)))
});
