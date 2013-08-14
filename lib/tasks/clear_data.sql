update people set deck_id = null;
update decks set creator_id = null;
delete from people;
delete from decks;
