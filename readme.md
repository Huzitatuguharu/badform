# BADFORM

- [BADFORM](#badform)
  - [プロダクトの紹介](#プロダクトの紹介)
  - [こだわった](#こだわった)
    - [CSS カスタムプロパティ (変数) をつかってみた](#css-カスタムプロパティ-変数-をつかってみた)
  - [くるしい](#くるしい)
    - [ゲームっぽくしたかった](#ゲームっぽくしたかった)
    - [inputのCSS](#inputのcss)
    - [メモページのレイアウト](#メモページのレイアウト)
  - [感想](#感想)

<br>

---
<br>

## プロダクトの紹介

ちょっとおかしい問い合わせフォーム
<br>

卒業制作のアイディアで試しにつくってみた。
<br>
UI/UXやデザインの勉強
<br>

https://nlab.itmedia.co.jp/nl/articles/1907/13/news005.html
<br>

---
<br>

## こだわった
<br>


### CSS カスタムプロパティ (変数) をつかってみた
まずは色だけ。
<br>
上手に使えるようになりたい。
<br>



```
 :root {
  --color_black: #333;
}

h1 {
  color: var( --color_black);
  margin: 10px;
  width: 50px;
  height: 50px;
  display: inline-block;
}


```
<br>

[コリス CSS変数の優れた使い方、コンポーネントのバリエーションを実装するのに役立つ](https://coliss.com/articles/build-websites/operation/css/use-cases-for-css-variables.html)

<br>
<br>


---
<br>

## くるしい

### ゲームっぽくしたかった

考えていることを形にするのはむずかしい
<br>

### inputのCSS
ややこしや
<br>

### メモページのレイアウト
色々迷走して、一旦じゃがリストのやつにした。
<br>
これから検討すべし。
<br>
「●●がダメ」で終わらず、
- どうしてダメなのか
- どのように改善すべきか

  をわかりやすくまとめられるようにしたい。

---
<br>

## 感想
BADUI探すのに色々な問い合わせフォームをみにいった。
<br>
サイトによって違いがあり、きちんと研究せねばと思った。
<br>
BADをつくるためにGOODがわかりたい。
