# 課題1まとめ

今回は標準画像のひとつである「Balloon.bmp」を使用した．

はじめに原画像を図1に示す．

![image1](https://raw.githubusercontent.com/Oic5han/Image_Processing_Technology/master/images/Balloon.bmp)

図1　原画像

課題1のプログラムは，原画像を縮小したものを拡大することによりピクセル数を下げている．

```
IMG = imresize(original,0.5);   % 画像を0.5倍に縮小
IMG2 = imresize(IMG,2,'box');   % 画像を2倍に拡大
```

上記のように画像を1/2にし，元のサイズにするために2倍することで，ピクセル数が1/2になる．この時の画像を図2に示す．

![image2](https://github.com/Oic5han/Image_Processing_Technology/blob/master/kadai1/images/balloon_1_2.png?raw=true)

図2　ピクセル数1/2

図1と比較すると，少し画像が荒くなったことが確認できる．

```
IMG = imresize(IMG,0.5);        % 画像を0.5倍に縮小
IMG2 = imresize(IMG,4,'box');   % 画像を4倍に拡大
```

上記のようにすることで，1/2に縮小した画像をさらに1/2にするので，原画像の1/4になる．またその画像を4倍にしているので，原画像の1/4のピクセル数になる．以降は，1/2に縮小しつつ，8倍，16倍，32倍とすることで，原画像の1/8，1/16，1/32のピクセル数にすることができる．以下にそれぞれの時の画像を示す．

![image3](https://github.com/Oic5han/Image_Processing_Technology/blob/master/kadai1/images/balloon_1_4.png?raw=true)

図3　ピクセル数1/4

![image4](https://github.com/Oic5han/Image_Processing_Technology/blob/master/kadai1/images/balloon_1_8.png?raw=true)

図4　ピクセル数1/8

![image5](https://github.com/Oic5han/Image_Processing_Technology/blob/master/kadai1/images/balloon_1_16.png?raw=true)

図5　ピクセル数1/16

![image6](https://github.com/Oic5han/Image_Processing_Technology/blob/master/kadai1/images/balloon_1_32.png?raw=true)

図6　ピクセル数1/32

以上のように，ピクセル数を下げる，つまりサンプリングの幅を広げると画像に歪みが発生してしまう．
