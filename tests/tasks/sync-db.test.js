const { syncDB } = require("../../tasks/sync-db");


describe('pruebas eb sybc-DB', () => {
  test('debe de ejecutar el proceso 2 veces', () => {
    syncDB()
    const times = syncDB()
    console.log(times)

    expect( times ).toBe(2)
  })
});
