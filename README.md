# lazy_loading_list_view

Issue
- As per items in listView with counter are potentially reassigned to its default value as its storing count @State on each ListWidget, List are potentially lazily-loaded, depending on the os, length of the list, number of items on the screen, etc.

- If a list item is loaded and then its state is changed, that state is not reassigned to the item if that item has been since unloaded/reloaded into the List.

Solution - To persist data for one app cycle
- Instead of storing count @State on each List row, you could move the state to the parent view, which wouldn't be unloaded: by the use model class
