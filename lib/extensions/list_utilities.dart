extension ListUtilities on List {
  multiSort(List<bool> criteria, dynamic preferrence) {
    if (preferrence.length == 0 || criteria.isEmpty || length == 0) {
      return this;
    }
    if (preferrence.length != criteria.length) {
      // print('Criteria length is not equal to preferrence');
      return this;
    }

    int compare(int i, dynamic a, dynamic b) {
      if (a.get(preferrence[i]) == b.get(preferrence[i])) {
        return 0;
      } else if (a.get(preferrence[i]) > b.get(preferrence[i])) {
        return criteria[i] ? 1 : -1;
      } else {
        return criteria[i] ? -1 : 1;
      }
    }

    int sortAll(a, b) {
      int i = 0;
      int result = 0;
      while (i < preferrence.length) {
        result = compare(i, a, b);
        if (result != 0) break;
        i++;
      }
      return result;
    }

    sort((a, b) => sortAll(a, b));
  }

  String listToString(){
    var result = "";
    for(var item in this){
      result += "$item,";
    }
    return result.trim().substring(0,result.length - 1);
  }


}
