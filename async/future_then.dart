Future<String> fetchData() {
  return Future.delayed(Duration(seconds: 2), () {
    return '결과 데이터';
  });
}

void fetchDataAwait() async {
  String result = await fetchData();
  print(result);

}

void main(List<String> args) async {
  // then(data) 
  // : Future 가 완료된 후, 변환값 data를 가져와서, 특정 작업을 수행하는 메소드

  fetchData().then((value) {
    print(value);
    print('추가 작업...');
  });

  fetchDataAwait();

  print('요청 중...');
}