- 普通にsinatraをインストールする方法
    - ドットインストールとかサイトにいっぱい載っている

- bundleでsinatraを作成する方法
    - http://kozo002.blogspot.jp/2012/04/rubybundler-sinatra.html

- sinatraでlink_toやcontent_tagを使う方法
    - (クラス利用の場合を参照)http://blog.s21g.com/articles/1704

- slimに直接JavaScriptを記述する方法
    - javascript:って書くだけ
    - http://qiita.com/mikuhonda/items/e94bdb8b6778ce9df59c

- sinatraにactiverecordとsqlite3を入れる方法
    - gemfileに下記を書く
        - gem 'activerecord'
        - gem 'sinatra-activerecord'
        - gem 'sqlite3'
    - bundle install --path vendor/bundle --without productionでインストできる
    