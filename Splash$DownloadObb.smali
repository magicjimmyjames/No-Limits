.class Lorg/xbmc/kodi/Splash$DownloadObb;
.super Landroid/os/AsyncTask;
.source "Splash.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/xbmc/kodi/Splash;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DownloadObb"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private mProgressStatus:I

.field private mSplash:Lorg/xbmc/kodi/Splash;

.field final synthetic this$0:Lorg/xbmc/kodi/Splash;


# direct methods
.method public constructor <init>(Lorg/xbmc/kodi/Splash;Lorg/xbmc/kodi/Splash;)V
    .registers 4

    .prologue
    .line 166
    iput-object p1, p0, Lorg/xbmc/kodi/Splash$DownloadObb;->this$0:Lorg/xbmc/kodi/Splash;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 163
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/xbmc/kodi/Splash$DownloadObb;->mSplash:Lorg/xbmc/kodi/Splash;

    .line 164
    const/4 v0, 0x0

    iput v0, p0, Lorg/xbmc/kodi/Splash$DownloadObb;->mProgressStatus:I

    .line 167
    iput-object p2, p0, Lorg/xbmc/kodi/Splash$DownloadObb;->mSplash:Lorg/xbmc/kodi/Splash;

    .line 168
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Integer;
    .registers 16

    .prologue
    .line 172
    const/4 v3, 0x0

    .line 173
    const/4 v2, 0x0

    .line 174
    const/4 v1, 0x0

    .line 176
    const/4 v0, 0x0

    aget-object v0, p1, v0

    .line 177
    const/4 v4, 0x1

    aget-object v5, p1, v4

    .line 178
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 180
    const-string v4, "Kodi"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Downloading "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    invoke-virtual {v8}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_6a

    invoke-virtual {v8}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    move-result v4

    if-nez v4, :cond_6a

    .line 183
    const-string v0, "Kodi"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error creating directory "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v8}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 244
    :cond_69
    :goto_69
    return-object v0

    .line 187
    :cond_6a
    const/4 v4, 0x0

    .line 189
    :try_start_6b
    new-instance v6, Ljava/net/URL;

    invoke-direct {v6, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 190
    invoke-virtual {v6}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_76
    .catch Ljava/lang/Exception; {:try_start_6b .. :try_end_76} :catch_14b
    .catchall {:try_start_6b .. :try_end_76} :catchall_127

    .line 191
    :try_start_76
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    .line 195
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    const/16 v6, 0xc8

    if-eq v1, v6, :cond_97

    .line 196
    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_85
    .catch Ljava/lang/Exception; {:try_start_76 .. :try_end_85} :catch_14d
    .catchall {:try_start_76 .. :try_end_85} :catchall_13e

    move-result-object v1

    .line 228
    if-eqz v2, :cond_8b

    .line 229
    :try_start_88
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    .line 230
    :cond_8b
    if-eqz v3, :cond_90

    .line 231
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_90
    .catch Ljava/io/IOException; {:try_start_88 .. :try_end_90} :catch_152

    .line 235
    :cond_90
    :goto_90
    if-eqz v0, :cond_95

    .line 236
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_95
    move-object v0, v1

    goto :goto_69

    .line 201
    :cond_97
    :try_start_97
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v9

    .line 204
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    .line 205
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_a4
    .catch Ljava/lang/Exception; {:try_start_97 .. :try_end_a4} :catch_14d
    .catchall {:try_start_97 .. :try_end_a4} :catchall_13e

    .line 207
    const/16 v2, 0x1000

    :try_start_a6
    new-array v2, v2, [B

    .line 208
    const-wide/16 v6, 0x0

    .line 210
    iget-object v5, p0, Lorg/xbmc/kodi/Splash$DownloadObb;->this$0:Lorg/xbmc/kodi/Splash;

    invoke-static {v5}, Lorg/xbmc/kodi/Splash;->access$300(Lorg/xbmc/kodi/Splash;)Landroid/widget/ProgressBar;

    move-result-object v5

    const/4 v10, 0x0

    invoke-virtual {v5, v10}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 211
    iget-object v5, p0, Lorg/xbmc/kodi/Splash$DownloadObb;->this$0:Lorg/xbmc/kodi/Splash;

    invoke-static {v5}, Lorg/xbmc/kodi/Splash;->access$300(Lorg/xbmc/kodi/Splash;)Landroid/widget/ProgressBar;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 212
    :goto_bd
    invoke-virtual {v3, v2}, Ljava/io/InputStream;->read([B)I

    move-result v5

    const/4 v10, -0x1

    if-eq v5, v10, :cond_155

    .line 214
    invoke-virtual {p0}, Lorg/xbmc/kodi/Splash$DownloadObb;->isCancelled()Z
    :try_end_c7
    .catch Ljava/lang/Exception; {:try_start_a6 .. :try_end_c7} :catch_10e
    .catchall {:try_start_a6 .. :try_end_c7} :catchall_143

    move-result v10

    if-eqz v10, :cond_f7

    .line 215
    const/4 v2, -0x1

    .line 228
    :goto_cb
    if-eqz v1, :cond_d0

    .line 229
    :try_start_cd
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 230
    :cond_d0
    if-eqz v3, :cond_d5

    .line 231
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_d5
    .catch Ljava/io/IOException; {:try_start_cd .. :try_end_d5} :catch_150

    .line 235
    :cond_d5
    :goto_d5
    if-eqz v0, :cond_da

    .line 236
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 238
    :cond_da
    if-nez v2, :cond_138

    .line 239
    iget-object v0, p0, Lorg/xbmc/kodi/Splash$DownloadObb;->this$0:Lorg/xbmc/kodi/Splash;

    const/16 v1, 0x5b

    invoke-static {v0, v1}, Lorg/xbmc/kodi/Splash;->access$002(Lorg/xbmc/kodi/Splash;I)I

    .line 243
    :goto_e3
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Integer;

    const/4 v1, 0x0

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v1

    invoke-virtual {p0, v0}, Lorg/xbmc/kodi/Splash$DownloadObb;->publishProgress([Ljava/lang/Object;)V

    .line 244
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto/16 :goto_69

    .line 218
    :cond_f7
    int-to-long v10, v5

    add-long/2addr v6, v10

    .line 220
    if-lez v9, :cond_109

    .line 221
    const/4 v10, 0x1

    :try_start_fc
    new-array v10, v10, [Ljava/lang/Integer;

    const/4 v11, 0x0

    long-to-int v12, v6

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {p0, v10}, Lorg/xbmc/kodi/Splash$DownloadObb;->publishProgress([Ljava/lang/Object;)V

    .line 222
    :cond_109
    const/4 v10, 0x0

    invoke-virtual {v1, v2, v10, v5}, Ljava/io/OutputStream;->write([BII)V
    :try_end_10d
    .catch Ljava/lang/Exception; {:try_start_fc .. :try_end_10d} :catch_10e
    .catchall {:try_start_fc .. :try_end_10d} :catchall_143

    goto :goto_bd

    .line 224
    :catch_10e
    move-exception v2

    move-object v2, v1

    move-object v1, v0

    .line 225
    :goto_111
    const/4 v0, -0x1

    :try_start_112
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_115
    .catchall {:try_start_112 .. :try_end_115} :catchall_127

    move-result-object v0

    .line 228
    if-eqz v2, :cond_11b

    .line 229
    :try_start_118
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    .line 230
    :cond_11b
    if-eqz v3, :cond_120

    .line 231
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_120
    .catch Ljava/io/IOException; {:try_start_118 .. :try_end_120} :catch_149

    .line 235
    :cond_120
    :goto_120
    if-eqz v1, :cond_69

    .line 236
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    goto/16 :goto_69

    .line 227
    :catchall_127
    move-exception v0

    .line 228
    :goto_128
    if-eqz v2, :cond_12d

    .line 229
    :try_start_12a
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    .line 230
    :cond_12d
    if-eqz v3, :cond_132

    .line 231
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_132
    .catch Ljava/io/IOException; {:try_start_12a .. :try_end_132} :catch_13c

    .line 235
    :cond_132
    :goto_132
    if-eqz v1, :cond_137

    .line 236
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_137
    throw v0

    .line 241
    :cond_138
    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    goto :goto_e3

    .line 232
    :catch_13c
    move-exception v2

    goto :goto_132

    .line 227
    :catchall_13e
    move-exception v1

    move-object v13, v1

    move-object v1, v0

    move-object v0, v13

    goto :goto_128

    :catchall_143
    move-exception v2

    move-object v13, v2

    move-object v2, v1

    move-object v1, v0

    move-object v0, v13

    goto :goto_128

    .line 232
    :catch_149
    move-exception v2

    goto :goto_120

    .line 224
    :catch_14b
    move-exception v0

    goto :goto_111

    :catch_14d
    move-exception v1

    move-object v1, v0

    goto :goto_111

    .line 232
    :catch_150
    move-exception v1

    goto :goto_d5

    :catch_152
    move-exception v2

    goto/16 :goto_90

    :cond_155
    move v2, v4

    goto/16 :goto_cb
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 161
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lorg/xbmc/kodi/Splash$DownloadObb;->doInBackground([Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .registers 4

    .prologue
    .line 263
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 264
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-gez v0, :cond_16

    .line 265
    iget-object v0, p0, Lorg/xbmc/kodi/Splash$DownloadObb;->this$0:Lorg/xbmc/kodi/Splash;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/xbmc/kodi/Splash;->access$002(Lorg/xbmc/kodi/Splash;I)I

    .line 266
    iget-object v0, p0, Lorg/xbmc/kodi/Splash$DownloadObb;->this$0:Lorg/xbmc/kodi/Splash;

    const-string v1, "Cannot download obb."

    invoke-static {v0, v1}, Lorg/xbmc/kodi/Splash;->access$102(Lorg/xbmc/kodi/Splash;Ljava/lang/String;)Ljava/lang/String;

    .line 269
    :cond_16
    iget-object v0, p0, Lorg/xbmc/kodi/Splash$DownloadObb;->this$0:Lorg/xbmc/kodi/Splash;

    invoke-static {v0}, Lorg/xbmc/kodi/Splash;->access$1000(Lorg/xbmc/kodi/Splash;)Lorg/xbmc/kodi/Splash$StateMachine;

    move-result-object v0

    iget-object v1, p0, Lorg/xbmc/kodi/Splash$DownloadObb;->this$0:Lorg/xbmc/kodi/Splash;

    invoke-static {v1}, Lorg/xbmc/kodi/Splash;->access$000(Lorg/xbmc/kodi/Splash;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/xbmc/kodi/Splash$StateMachine;->sendEmptyMessage(I)Z

    .line 270
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 161
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lorg/xbmc/kodi/Splash$DownloadObb;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 249
    iget-object v0, p0, Lorg/xbmc/kodi/Splash$DownloadObb;->this$0:Lorg/xbmc/kodi/Splash;

    invoke-static {v0}, Lorg/xbmc/kodi/Splash;->access$000(Lorg/xbmc/kodi/Splash;)I

    move-result v0

    packed-switch v0, :pswitch_data_3a

    .line 259
    :goto_a
    return-void

    .line 251
    :pswitch_b
    iget-object v0, p0, Lorg/xbmc/kodi/Splash$DownloadObb;->mSplash:Lorg/xbmc/kodi/Splash;

    invoke-static {v0}, Lorg/xbmc/kodi/Splash;->access$200(Lorg/xbmc/kodi/Splash;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "Downloading OBB..."

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 252
    iget-object v0, p0, Lorg/xbmc/kodi/Splash$DownloadObb;->mSplash:Lorg/xbmc/kodi/Splash;

    invoke-static {v0}, Lorg/xbmc/kodi/Splash;->access$300(Lorg/xbmc/kodi/Splash;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 253
    iget-object v0, p0, Lorg/xbmc/kodi/Splash$DownloadObb;->mSplash:Lorg/xbmc/kodi/Splash;

    invoke-static {v0}, Lorg/xbmc/kodi/Splash;->access$300(Lorg/xbmc/kodi/Splash;)Landroid/widget/ProgressBar;

    move-result-object v0

    aget-object v1, p1, v2

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto :goto_a

    .line 256
    :pswitch_2f
    iget-object v0, p0, Lorg/xbmc/kodi/Splash$DownloadObb;->mSplash:Lorg/xbmc/kodi/Splash;

    invoke-static {v0}, Lorg/xbmc/kodi/Splash;->access$300(Lorg/xbmc/kodi/Splash;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_a

    .line 249
    :pswitch_data_3a
    .packed-switch 0x5a
        :pswitch_b
        :pswitch_2f
    .end packed-switch
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 161
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lorg/xbmc/kodi/Splash$DownloadObb;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
