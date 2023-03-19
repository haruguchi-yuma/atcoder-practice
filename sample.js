console.log('1:',  '作業1');

console.log('2:', 'レンジでチン開始')

const startTime = new Date();

while (true) {
  const now = new Date();
  if (now - startTime >= 10 * 1000) { // 10秒ブロッキング
    break;
  }
}

console.log('3:', 'ブロッキングされているのでこの処理は10以上秒待ってから実行される')
