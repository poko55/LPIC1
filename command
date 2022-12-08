/procディレクトリ配下	説明
interrupts	IRQに関する情報
ioports	I/Oアドレスの情報
bus/pci/devices	PCIデバイスに関する情報
bus/usb/devices	USBデバイスに関する情報
meminfo	メモリに関する情報
cpuinfo	CPUに関する情報
dma	使用中のDMAチャネルに関する情報
modules	ロードされているカーネルモジュールに関する情報
scsi/scsi	SCSIデバイスに関する情報
	
systemctl サブコマンド[UNIT名]	
サブコマンドの一覧	
サブコマンド	用途
disable	サービスの自動起動を無効にする
enable	サービスの自動起動を有効にする
get-default	次回起動時のターゲットを表示する
halt	システムを停止しhalt状態にする
is-active	サービスが稼働しているかを表示する
ｌist-unit-files	すべてのUnit定義ファイルを一覧表示する
reboot	システムを再起動する
reload	サービスの設定ファイルを再読み込みする
restart	サービスを再起動する
set-default  	次回起動時のターゲットを設定する
start	サービスを起動する
status	サービスの状態を表示する
stop	サービスを停止する
poweroff	システムを停止し電源を切断する
	
拡張子	機能
device	各種デバイスを管理するUnit
mount	ファイルシステムのマウントを管理するUnit
service	サービスを制御するUnit
swap	スワップ領域を管理するUnit
target	複数のサービスを一つのグループにするためのUnit
	
	
SysVinit	
システム起動時やランレベルの変更時にinitが「/etc/inittab」を参照し、ランレベルに	
応じたスクリプトは「/etc/rc[0-6].d」に入っている。	
例K01smartf	
1文字目：S(Start: サービスを起動）、K(Kill: サービスを停止)	
数字：実行優先順位。若番のものが先に実行される	
サービス名：任意の名前を付ける	
	
ランレベル	ターゲット
0	poweroff.target(システム停止)
1/s/S	rescue.target(シングルユーザモード)
2	Multi-user.target（テキストログイン、NFSなし）
3	Multi-user.target（テキストログイン）
4	Multi-user.target（未使用）
5	graphical.target（マルチユーザモード、GNUユーザモード）
6	reboot.target（システム再起動）
	
cat proc/bus/pci/devces	PCIデバイスに関する情報を表示する
lspct	
	
shutdown[オプション] 時間 [メッセージ]	
-h	システム停止
-r	システム再起動
-k	ショットダウンは行わず、ログイン中の全ユーザーにメッセージを送る。
-c	実行中のシャットダウンをキャンセル
時間設定	
HH:MM	HH時MM分に実行
+M	M分後に実行
now	今すぐに実行
	
USBデバイスクラス	
HID(Human Interface Device)	キーボード、マウス、ジョイスティック
Mass Storage Class	ハードディスク、USBメモリー
ACM Communication Device Class	モデム、TA
Audio Class	スピーカー、マイク等
	
Linuxカーネルの起動オプション	
init=パス	initの代わりに指定コマンドを実行
root=デバイス名	ルートパーティションを指定
数字(0-6)	指定したランレベルで起動
quiet	起動中のカーネルからの情報出力を抑制する
	
dpkgコマンド	パッケージのインストール・アンインストール等、基本的なパッケージ管理を行うコマンド
	
デイレクトリ 分割適否	用途
/home〇	一般ユーザのホームディレクトリ（書き込みが頻繁に発生）
/usr〇	起動には不要なプログラムなどを格納（読み込みが頻繁に発生)
/var〇	ログファイルやメールなど可変ファイル群を格納（書き込みが頻繁に発生）
/opt 〇	ログファイルやメールなど可変ファイル群を格納（書き込みが頻繁に発生）
/boot △	Linuxカーネル等起動に必須のファイルを格納
/tmp △	一時ファイルを格納
/bin ×	一般ユーザ用のコマンドを格納
/sbin ×	管理者用のコマンドを格納
/etc ×	システムの設定ファイルを格納
/lib ×	共有ライブラリを格納
/dev ×	デバイスファイルを格納
	
Zypper	openSUSEが採用しているコマンドラインのパッケージ管理ツール
apt/apt-get	Debian系パッケージを管理するdpkgツールのコマンド
yum	PRM系パッケージを管理するYUMツールのコマンド
rpm	RPM系パッケージのインストール・アンインストール等、基本的なパッケージ管理を行うコマンド
zypper[オプション]サブコマンド	
サブコマンド	説明
install in パッケージ名	パッケージのインストール
update | up　[パッケージ名]	パッケージのアップデート
remove | rm パッケージ名	パッケージのアンインストール
info パッケージ名	パッケージの詳細情報の表示
search | se キーワード	指定したキーワードでパッケージの検索
list-updates | lu [オプション]	アップデート可能なパッケージの表示
repos | lu [オプション]	アップデート可能なパッケージの表示
repos | lr	リポジトリの一覧表示
refresh	リポジトリの更新
	
yum [-y] サブコマンド	
Install | in パッケージ名	パッケージのインストール
Update | up パッケージ名	パッケージのアップデート
Remove | rm パッケージ名	パッケージのアンインストール
info パッケージ名	パッケージの詳細情報の表示
Search | se　キーワード	指定したキーワードでパッケージの検索
List-updates | lu [オプション]	アップデート可能なパッケージの表示
Repos | lr	リポジトリの一覧表示
refresh	リポジトリの更新
ldd コマンドパス	あるプログラムから必要としている共有ライブラリを表示するコマンド
	
rpmコマンド	
-i(--install)パッケージファイル名	パッケージのインストール・アンインストール等、基本的なパッケージ管理を行うコマンド
-U(--upgrade)パッケージファイル名	パッケージのアップグレード（なければインストール）
-F(--freshen)パッケージファイル名	パッケージのアップグレード（なければインストールしない）
-e(--erase)パッケージ名	パッケージのアンインストール
併用オプション	
-v	詳細情報の表示
-h(--hash)	進行状況「#」で表示
--test	実際には実行せずにテストを実施
--nodeps	依存関係を無視
	
dpkg[オプション]アクション	
オプション	説明
-E	同バージョンが既にインストールされていればインストールしない
-G	新バージョンが既にインストールされていればインストールしない
-R	ディレクトリを再帰的に処理
アクション	説明
-i(--install)パッケージファイル名	パッケージのインストール
-r(--remove)パッケージ名	設定ファイルを残したパッケージをアンインストール
-p(--purge)パッケージ名	設定ファイルも含め完全にパッケージをアンインストール
-l(--list)[検索パターン]	インストール済みパッケージを検索して表示
-L(--listfiles)パッケージ名	指定したパッケージからインストールされたファイルを一覧表示
-s(--status)パッケージ名	インストール済みパッケージの詳細情報の表示
-S(--search)検索パターン	指定したファイルがどのパッケージからインストールされたかを表示
-C(--audit)	インストールが完了していない（不完全)パッケージの表示
	https://nhentai.net/g/421047/42/
rpmコマンド	
オプション	説明
-q(--query)パッケージ名	指定したパッケージがインストールされているかを照会
-V(--verify)パッケージ名	パッケージの検査※検査方法：PRMでデータベースに格納されているファイルに関する情報と
※併用オプションは「-a(--all)と「--nomd5」のみ」	インストールされたパッケージのファイルに関する情報と比較
	※検査内容:ファイルのサイズ、MD5チェックサム、所有ユーザ、所有グループ、タイムスタンプ等
併用オプション	説明
-a(--all)	インストール済みの全パッケージの表示
-l(--list)	指定したパッケージに含まれるのファイルの表示
-i(--info)	指定したパッケージの詳細情報の表示
-f(--file)ファイル名	指定したファイルがどのパッケージからインストールされたかを表示
-p(--package)	照会対象をパッケージファイルとする
-c(--configfiles)	設定ファイルの一覧表示
--nomd5	MD5によるファイルの改ざんを検査しない
	
apt-cacheサブコマンド	
サブコマンド	説明
search キーワード	キーワードを含むパッケージを検索
show パッケージ名	指定したパッケージ情報の表示
showpkg パッケージ名	指定したパッケージの非依存関係を含めた情報の表示
depends パッケージ名	指定したパッケージが依存しているパッケージの一覧の表示
	
記号	説明
<	標準入力の入力元を指定(0<と同義)
<<(ヒアドキュメント)	標準入力の入力元を指定し、終了文字まで入力(0<<と同義)
<<<(ヒアストリング)	指定した文字列をコマンドの標準入力に送る
>	標準出力の出力先を指定(1>)と同義
>>	標準出力の出力先を指定し、出力先に追記（1>>と同義)
2>	標準エラー出力の出力先を指定
2>>	標準エラー出力の出力先を指定し、出力先に追加
＞＆2	標準出力の出力先を、標準エラー出力の出力先と同じにする。(1>＆2と同義)
2>＆1	標準エラー出力の出力先を、標準出力の出力先と同じにする
	
ps [オプション]	
オプション	説明
a	他のユーザのプロセスの表示
f	プロセスの親子関係をツリー上で表示
u	プロセスの実行ユーザ名も表示
x	制御端末の無いデーモン等のプロセスも表示
-e	すべてのプロセスの表示
-f	完全なフォーマットでプロセスを表示
-p | p PID	指定したPID(プロセスID)のプロセス情報の表示
-l | l	親プロセスのPIDや実行優先度を決定するnice値(NI)等も併せて表示
	
環境変数	説明
HISTFILE	コマンド履歴保存ファイルのパス
HISTSIZE	現在のシェルでのコマンド履歴の保存数
HISTFILESIZE	コマンド履歴保存ファイルへの履歴保存数
HOSTNAME	ホスト名
HOME	ログインしているユーザのホームディレクトリ
LANG	ロケール(言語設定)
PATH	コマンドやプログラムを検索するディレクトリのリスト
PWD	カレントディレクトリのパス
USER	ログインしているユーザ
	
tune2fs [オプション] デバイス名	
オプション	説明
-c 回数	e2fsckコマンドでファイルシステムのチェックを行うまでの最大マウント回数を指定
-i 時間[d|m|w]	e2fsckコマンドでファイルシステムのチェックを行うまでの最大時間間隔を指定
-JIS()	ext2をext3ファイルシステムに変換
-L　ラベル名	ファイルシステムのボリュームラベルを設定
	
fsck [オプション] デバイス名	
オプション	説明
-t ファイルシステムの種類	ファイルシステムの種類を指定
-A	「/etc/fstab」に記述されている全ファイルシステムに対して実行
-N	実際には実行せず、実行する内容を表示
 -a	問題を自動的に修復
 -r	問題を対話的に修復
	
df [オプション] [デバイス名又はディレクトリ名]	
オプション	説明
-h	分かりやす単位を付加して表示
-k	キロバイト単位で表示
-m	メガバイト単位で表示
-i	inodeの使用状況を表示
	
mke2fs [オプション] デバイス名	
 -j	ext3ファイルシステムを作成
 -t　ファイルシステムの種類	ファイルシステムの種類を指定（ext2/ext3/ext4）
-c	ファイルシステムを作成する前に不良ブロックを検査
	
mkfs [オプション]　デバイス名	
 -t ファイルシステムの種類	ファイルシステムの種類を指定
 -c	ファイルシステムを作成する前に不良ブロックを検査
	
ファイルシステム	説明
ext2	以前のLinuxで標準的に使用されていた規格
ext3	・ext2の後継　ジャーナリングファイルシステム
ext4	・exｔ3の後継 ジャーナリングファイルシステム
XFS	シリコングラフィック社(SGI)が開発　ジャーナリングファイルシステム　動的inode
JFS	IBMが開発 ジャーナリングファイルシステム　動的inode
	
find [検索起点ディレクトリ] [検索式] [アクション]	
-name ファイル名	ファイル名で検索
-atime 日数	最終アクセス日で検索
-mtime 日数	最終更新日で検索
-perm アクセス権	アクセス権で検索
-size サイズ	ファイルサイズで検索
-type ファイルの種類	ファイルの種類で検索
-user ユーザ名	ファイルの所有者で検索
-maxdepth 階層数	指定した階層まで検索
-mindepth 階層数	指定した階層から下を検索
アクション	説明
-print	検索結果を開業で区切って表示
-print0	検索結果をNULL文字(¥0)で区切って表示
-exec コマンド名{}￥;	検索結果のファイルに対してコマンドを実行
	
プロセス名	機能
systemd	systemdの本体となるプロセスでえ、initの代わりに常駐します
Systemd-jounald	systemdが制御する、各サービスが出力するログを扱います。
Systemd-logind	システムへのログイン、起動停止、電源ボタン操作等を管理します
Systemd-udved	従来のudevdに代わり、デバイスの動的変更、検出を行います。
	
modprobe	
設定内容	説明
options	各カーネルモジュールのデフォルトパラメータを指定する。
alias	カーネルモジュールに別名をつける
install	特定のカーネルモジュールのロード時に実行されるコマンドを指定する。
remove	特定のカーネルモジュールのアンロード時に実行されるコマンドを指定する。
blacklist	ロードしたくないカーネルモジュールを指定する。
	
コマンド	説明
wall [-n][message] ※centOS7	複数のユーザーにメッセージを送信する。
wall [file] ※Ubuntu 14.04	同上
	
コマンド	説明
ldconfig /bin/bash	共有ライブラリのキャッシュファイル「/etc/ld.so.cache」を更新するコマンド
lsmod /bin/bash	ロードされているモジュールを確認するためのコマンド
modprobe /bin/bash	モジュールをロード・アンロードするためのコマンド
cat /bin/bash	ファイルの内容を表示するコマンド
	
/etc/apt/sources.List	パッケージ取得元を設定する。
	
Apt-get [オプション] サブコマンド	説明
install パッケージ名	パッケージのインストール又はアップグレード
remove パッケージ名	パッケージのアンインストール
upgrade	インストール済みの全パッケージのアップグレード
dist-upgrade	ディストリビューションを最新版にアップグレード
update	パッケージのデータベースを最新版に更新
clean	過去に取得したパッケージファイルを削除
	
ディレクトリ	格納物
/usr/bin	システムの起動には必須ではない、一般ユーザ用のコマンド
/usr/sbin	システムの起動には必須ではない、システム管理用のコマンド
/usr/lib	/usr/bin、/usr/sbinに格納されるコマンドが必要とする共有ライブラリ
/usr/local	ホスト固有で使用するプログラムや設定ファイル
/usr/local/bin	配下に、プログラムを格納するbin、設定ファイルを格納する
/usr/local/etc	etc等のディレクトリ等がある。
/usr/share/man	マニュアル
	
du[オプション][ファイル名またはディレクトリ名]	
-a	ディレクトリ以外にファイルについても表示
-h	分かりやすい単位を付加して表示
-c	合計容量も同時に表示
-s	指定したファイルやディレクトリの合計容量のみを表示
-S	ディレクトリの容量にサブディレクトリの容量を含めずに表示
-k	キロバイト単位で表示
-m	メガバイト単位で表示
	
コマンド | tee [-a] ファイル	
標準入力の内容をTの字のように、氷人出力先とファイルの双方に出力するコマンド	
	
unset 　変数名	
設定されている環境変数やシェル変数を削除する	
	
watch[オプション]コマンド	
指定したコマンドを一定時間ごとに繰り返し実行し、結果を表示する	
	
コマンド	説明
yyY	カーソル位置の行をバッファにコピー
yw	カーソル位置の単語をバッファにコピー
dd	カーソル位置の行を削除し、バッファにコピー
dw	カーソル位置の文字を削除し、バッファにコピー
x	カーソル位置の文字を削除し、バッファにコピー
X	カーソル位置の左の文字を削除し、バッファにコピー
p	バッファの内容を挿入
P	バッファの内容を挿入
u	元に戻す
	
tar [オプション] [ファイルまたはディレクトリ名]	
-c	新しいアーカイブを作成
-x	アーカイブからファイルを展開
-t	アーカイブの内容を一覧表示
-f	アーカイブファイル名を指定
-v	処理の詳細情報の表示
-z	gzipを通して圧縮/展開
-j	bzipを通して圧縮/展開
-J	xzを通して圧縮/展開
	
ls [オプション] [ディレクトリ名またはファイル名	
オプション	説明
-a	隠しファイルを含むすべてのファイルとディレクトリを表示
-A	「-a」と同じ。カレントディレクトリと親ディレクトリは表示しない
-d	指定したディレクトリの情報を表示
-F	名前の後ろにファイルタイプを表示
	・通常のファイルタイプ:なし
	・実行可能ファイル    :*
	・ディレクトリ        :/
	・シンボリックリンク  ：＠
-i	inode番号を付けて表示
-l	詳細情報（パーミッション、所有者、サイズ、更新日時）の表示
-R	サブディレクトリの内容も再帰的に表示
	
コマンド	説明
mkfs.xfs	XFSファイルシステムを作成する「mkfs -t xfs」で呼び出されるコマンド
xfs_info	ファイルシステムの情報を表示する
xfs_db	ファイルシステムの情報を表示する
xfs_check	ファイルシステムをチェックする
xfs_fsr	ファイルシステムのデフラグを行う
xfs_repair	ファイルシステムを検査・修復する
	
mount [オプション] [マウントするデバイス名] [マウントポイント]	
オプション	説明
-a	「/etc/fstab」ファイルに記載されているファイルシステムを全てマウント
-o	続けてマウントオプションを指定
-t	続けてファイルシステムの種類を指定
--bind	書式：mount --bind <dir1> <dir2>
	ディレクトリ「dir1」をディレクトリ「dir2」にマウントする
	
/etc/fstab	
オプション	説明
async	非同期で入出力を行う
auto	「mount -a」コマンド実行時にマウント
noauto	「mount -a」コマンド実行時にマウントしない
defaults	デフォルト指定(async,auto,dev,exec,nouser,rw,suid)
exec	バイナリの実行を許可
noexec	バイナリの実行を禁止
ro	読み取り専用
rw	読み書きを許可
suid	SUIDとSGIDを有効化
user	一般ユーザでマウント可、本人のみアンマウント可
users	一般ユーザでマウント可、誰でもマウント可
nouser	一般ユーザによるマウントを禁止
	
man[オプション][セクション番号]キーワード	
オプション	説明
-k	キーワードに一部一致するコマンドやファイルmanページを一覧表示(aproposコマンドと同じ)
-f	キーワードに完全一致するコマンドやファイルのmanページを一覧表示(whatisコマンドと同じ)
	
manページのセクション番号は以下の通りです。	
セクション番号	内容
1	ユーザコマンド
2	システムコール(カーネルが提供する関数)
3	ライブラリ呼び出し(プログラムライブラリに含まれる関数)
4	特殊ファイル(通常/dev 配下に存在するファイル)
5	ファイルの書式と復讐(例:/etc/passwd)
6	ゲーム
7	その他いろいろなもの(マクロパッケージや慣習などを含む)
8	システム管理コマンド
9	カーネルルーチン
	
正規表現	
「|」や「\」等の特殊な意味を持つ文字	
	
文字クラス	
「[]」内の文字集合	
	
数量詞	
「*」や「+」等のようにじょくぜんの文字の繰り返し回数を示す文字	
	
アンカー	
「^」や「$」等のように文字列内での位置を示す文字の事	
	
dd[オプション]	
オプション	説明
if=入力ファイル	入力側ファイル(デバイス)を指定
of=出力ファイル	出力側ファイル(デバイス)を指定
bs=バイト名	入出力のブロックサイズ(一度に読み書きするバイト数を指定　デフォルトは512バイト
count=回数	入力ファイルから出力ファイルへブロックをコピーする回数を指定
	
sed [オプション] 編集コマンド[ファイル名]	
sed [オプション] -e 編集コマンド1 [-e 編集コマンド2 ...] [ファイル名]	
sed [オプション] -f  [スクリプト] [ファイル名]	
オプション	説明
-e	編集コマンドを指定(編集コマンドが1つの場合は省略可)
-f	編集コマンドを記述したファイルを指定
編集コマンド	説明
s/文字列1/文字列2/	各行の最初に現れる文字列を文字列2に置換
s/文字列/文字列2/g	全ての文字列を文字列2に置換
/文字列/d	文字列が含まれる行を削除
行番号1,行番号2d	行番号1から行番号2までの行を削除
y/文字1文字2…/文字列3文字列4…/	文字1を文字3に、文字2を文字4に置換
	
grep [オプション] 検索パターン [ファイル名]	
オプション	説明
-c	マッチした行の行数のみ表示
-f	検索パターンをファイルから読み込む
-i	大文字と小文字を区別しない
-n	先頭に行番号をつけて、マッチした行を表示
-v	マッチしなかった行を表示
-E	拡張正規表現を使用(egrepコマンドと同様)
-F	検索パターンを正規表現ではなく、固定文字列とする(fgrepコマンドと同様)
	
renice [-n] nice値 オプション	
オプション	説明
-u ユーザ名	指定したユーザが所有する全てのプロセスのnice値を変更
-p PID	指定したPIDのプロセスのnice値を変更(「-p」は省略可能)
	
	
	
	
	
	
	
コマンド	説明
i	カーソルの左から入力開始
a	カーソルの右から入力開始
I	カーソルのある行の先頭から入力開始
A	カーソルのある行の末尾から入力開始
o	カーソルのある行の下に空白行を挿入し、その行から入力開始
O	カーソルのある行の上に空白行を挿入し、その行から入力開始
	
viコマンド	
コマンド	説明
:set nu | number	行番号を表示
set nonu | nonumber	行番号を表示しない
:set ts=タブ幅 | tabstop=タブ幅	タブ幅を数値で指定
	
tr [オプション] [文字列1 [文字列2]]	
オプション	説明
-d	文字列1で指定した文字を削除
-s	文字列1で指定した文字が連続した場合1文字に置き換える
	
文字クラス	説明
[:alpha:]	英字
[:lower:]	英小文字(a-z)
[:upper:]	英大文字(A-Z)
[:digit:]	数字(0-9)
[:alnum:]	英数字
[:space:]	スペース
	
viコマンド	
コマンド	説明
h	1文字左へ移動
l	1文字右へ移動
k	1文字上へ移動
j	1文字下へ移動
0	行頭へ移動
$	行末へ移動
H	画面の最上行へ移動
L	画面の最下行へ移動
gg	ファイルの先頭へ移動
nG	ファイルの先頭へ移動最終行へ移動
:n	ファイルのn行目へ移動
Ctrl+f	次の画面へ移動
Ctrl+b	前の画面へ移動
