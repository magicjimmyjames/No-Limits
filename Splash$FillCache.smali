.class Lorg/xbmc/kodi/Splash$FillCache;
.super Landroid/os/AsyncTask;
.source "Splash.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/xbmc/kodi/Splash;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FillCache"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
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
    .line 278
    iput-object p1, p0, Lorg/xbmc/kodi/Splash$FillCache;->this$0:Lorg/xbmc/kodi/Splash;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 275
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/xbmc/kodi/Splash$FillCache;->mSplash:Lorg/xbmc/kodi/Splash;

    .line 276
    const/4 v0, 0x0

    iput v0, p0, Lorg/xbmc/kodi/Splash$FillCache;->mProgressStatus:I

    .line 279
    iput-object p2, p0, Lorg/xbmc/kodi/Splash$FillCache;->mSplash:Lorg/xbmc/kodi/Splash;

    .line 280
    return-void
.end method


# virtual methods
.method DeleteRecursive(Ljava/io/File;)V
    .registers 6

    .prologue
    .line 283
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 284
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_c
    if-ge v0, v2, :cond_16

    aget-object v3, v1, v0

    .line 285
    invoke-virtual {p0, v3}, Lorg/xbmc/kodi/Splash$FillCache;->DeleteRecursive(Ljava/io/File;)V

    .line 284
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 287
    :cond_16
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 288
    return-void
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
    .registers 12

    .prologue
    const/16 v3, 0x1000

    const/4 v9, 0x1

    const/4 v8, -0x1

    const/4 v7, 0x0

    .line 292
    iget-object v0, p0, Lorg/xbmc/kodi/Splash$FillCache;->this$0:Lorg/xbmc/kodi/Splash;

    invoke-static {v0}, Lorg/xbmc/kodi/Splash;->access$700(Lorg/xbmc/kodi/Splash;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_46

    .line 294
    iget-object v0, p0, Lorg/xbmc/kodi/Splash$FillCache;->this$0:Lorg/xbmc/kodi/Splash;

    invoke-static {v0}, Lorg/xbmc/kodi/Splash;->access$1000(Lorg/xbmc/kodi/Splash;)Lorg/xbmc/kodi/Splash$StateMachine;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lorg/xbmc/kodi/Splash$StateMachine;->sendEmptyMessage(I)Z

    .line 295
    const-string v0, "Kodi"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Removing existing "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/xbmc/kodi/Splash$FillCache;->this$0:Lorg/xbmc/kodi/Splash;

    invoke-static {v2}, Lorg/xbmc/kodi/Splash;->access$700(Lorg/xbmc/kodi/Splash;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    iget-object v0, p0, Lorg/xbmc/kodi/Splash$FillCache;->this$0:Lorg/xbmc/kodi/Splash;

    invoke-static {v0}, Lorg/xbmc/kodi/Splash;->access$700(Lorg/xbmc/kodi/Splash;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/xbmc/kodi/Splash$FillCache;->DeleteRecursive(Ljava/io/File;)V

    .line 298
    :cond_46
    iget-object v0, p0, Lorg/xbmc/kodi/Splash$FillCache;->this$0:Lorg/xbmc/kodi/Splash;

    invoke-static {v0}, Lorg/xbmc/kodi/Splash;->access$700(Lorg/xbmc/kodi/Splash;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 304
    new-array v2, v3, [B

    .line 307
    :try_start_51
    new-instance v3, Ljava/util/zip/ZipFile;

    iget-object v0, p0, Lorg/xbmc/kodi/Splash$FillCache;->this$0:Lorg/xbmc/kodi/Splash;

    invoke-static {v0}, Lorg/xbmc/kodi/Splash;->access$1100(Lorg/xbmc/kodi/Splash;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V

    .line 308
    invoke-virtual {v3}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v4

    .line 309
    iget-object v0, p0, Lorg/xbmc/kodi/Splash$FillCache;->this$0:Lorg/xbmc/kodi/Splash;

    invoke-static {v0}, Lorg/xbmc/kodi/Splash;->access$300(Lorg/xbmc/kodi/Splash;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 310
    iget-object v0, p0, Lorg/xbmc/kodi/Splash$FillCache;->this$0:Lorg/xbmc/kodi/Splash;

    invoke-static {v0}, Lorg/xbmc/kodi/Splash;->access$300(Lorg/xbmc/kodi/Splash;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v3}, Ljava/util/zip/ZipFile;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 312
    iget-object v0, p0, Lorg/xbmc/kodi/Splash$FillCache;->this$0:Lorg/xbmc/kodi/Splash;

    const/4 v1, 0x5

    invoke-static {v0, v1}, Lorg/xbmc/kodi/Splash;->access$002(Lorg/xbmc/kodi/Splash;I)I

    .line 313
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Integer;

    const/4 v1, 0x0

    iget v5, p0, Lorg/xbmc/kodi/Splash$FillCache;->mProgressStatus:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v0, v1

    invoke-virtual {p0, v0}, Lorg/xbmc/kodi/Splash$FillCache;->publishProgress([Ljava/lang/Object;)V

    .line 314
    :cond_8c
    :goto_8c
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_193

    .line 316
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Integer;

    const/4 v1, 0x0

    iget v5, p0, Lorg/xbmc/kodi/Splash$FillCache;->mProgressStatus:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lorg/xbmc/kodi/Splash$FillCache;->mProgressStatus:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v0, v1

    invoke-virtual {p0, v0}, Lorg/xbmc/kodi/Splash$FillCache;->publishProgress([Ljava/lang/Object;)V

    .line 318
    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/zip/ZipEntry;

    .line 319
    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v1

    .line 321
    const-string v5, "assets/"

    invoke-virtual {v1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_c7

    iget-object v5, p0, Lorg/xbmc/kodi/Splash$FillCache;->this$0:Lorg/xbmc/kodi/Splash;

    invoke-static {v5}, Lorg/xbmc/kodi/Splash;->access$900(Lorg/xbmc/kodi/Splash;)Z

    move-result v5

    if-eqz v5, :cond_8c

    const-string v5, "lib/"

    invoke-virtual {v1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8c

    .line 323
    :cond_c7
    const-string v5, "assets/python2.6"

    invoke-virtual {v1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_8c

    .line 327
    const-string v5, "lib/"

    invoke-virtual {v1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_137

    .line 329
    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v5

    if-nez v5, :cond_8c

    .line 331
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lorg/xbmc/kodi/Splash$FillCache;->this$0:Lorg/xbmc/kodi/Splash;

    invoke-virtual {v6}, Lorg/xbmc/kodi/Splash;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_104
    .catch Ljava/io/FileNotFoundException; {:try_start_51 .. :try_end_104} :catch_127
    .catch Ljava/io/IOException; {:try_start_51 .. :try_end_104} :catch_164

    move-result-object v1

    .line 345
    :goto_105
    :try_start_105
    invoke-virtual {v3, v0}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v0

    .line 346
    new-instance v5, Ljava/io/BufferedOutputStream;

    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v6}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 348
    :goto_113
    const/4 v1, 0x0

    const/16 v6, 0x1000

    invoke-virtual {v0, v2, v1, v6}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    if-le v1, v8, :cond_18b

    .line 349
    const/4 v6, 0x0

    invoke-virtual {v5, v2, v6, v1}, Ljava/io/BufferedOutputStream;->write([BII)V
    :try_end_120
    .catch Ljava/io/IOException; {:try_start_105 .. :try_end_120} :catch_121
    .catch Ljava/io/FileNotFoundException; {:try_start_105 .. :try_end_120} :catch_127

    goto :goto_113

    .line 353
    :catch_121
    move-exception v0

    .line 354
    :try_start_122
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_125
    .catch Ljava/io/FileNotFoundException; {:try_start_122 .. :try_end_125} :catch_127
    .catch Ljava/io/IOException; {:try_start_122 .. :try_end_125} :catch_164

    goto/16 :goto_8c

    .line 362
    :catch_127
    move-exception v0

    .line 363
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 364
    iget-object v0, p0, Lorg/xbmc/kodi/Splash$FillCache;->this$0:Lorg/xbmc/kodi/Splash;

    const-string v1, "Cannot find package."

    invoke-static {v0, v1}, Lorg/xbmc/kodi/Splash;->access$102(Lorg/xbmc/kodi/Splash;Ljava/lang/String;)Ljava/lang/String;

    .line 365
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 377
    :goto_136
    return-object v0

    .line 335
    :cond_137
    :try_start_137
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lorg/xbmc/kodi/Splash$FillCache;->this$0:Lorg/xbmc/kodi/Splash;

    invoke-static {v6}, Lorg/xbmc/kodi/Splash;->access$1200(Lorg/xbmc/kodi/Splash;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 336
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 337
    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_182

    .line 338
    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z
    :try_end_162
    .catch Ljava/io/FileNotFoundException; {:try_start_137 .. :try_end_162} :catch_127
    .catch Ljava/io/IOException; {:try_start_137 .. :try_end_162} :catch_164

    goto/16 :goto_8c

    .line 366
    :catch_164
    move-exception v0

    .line 367
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 368
    iget-object v0, p0, Lorg/xbmc/kodi/Splash$FillCache;->this$0:Lorg/xbmc/kodi/Splash;

    const-string v1, "Cannot read package."

    invoke-static {v0, v1}, Lorg/xbmc/kodi/Splash;->access$102(Lorg/xbmc/kodi/Splash;Ljava/lang/String;)Ljava/lang/String;

    .line 369
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lorg/xbmc/kodi/Splash$FillCache;->this$0:Lorg/xbmc/kodi/Splash;

    invoke-static {v1}, Lorg/xbmc/kodi/Splash;->access$1100(Lorg/xbmc/kodi/Splash;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 370
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 371
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_136

    .line 341
    :cond_182
    :try_start_182
    invoke-virtual {v5}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z
    :try_end_189
    .catch Ljava/io/FileNotFoundException; {:try_start_182 .. :try_end_189} :catch_127
    .catch Ljava/io/IOException; {:try_start_182 .. :try_end_189} :catch_164

    goto/16 :goto_105

    .line 351
    :cond_18b
    :try_start_18b
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 352
    invoke-virtual {v5}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_191
    .catch Ljava/io/IOException; {:try_start_18b .. :try_end_191} :catch_121
    .catch Ljava/io/FileNotFoundException; {:try_start_18b .. :try_end_191} :catch_127

    goto/16 :goto_8c

    .line 358
    :cond_193
    :try_start_193
    invoke-virtual {v3}, Ljava/util/zip/ZipFile;->close()V

    .line 360
    iget-object v0, p0, Lorg/xbmc/kodi/Splash$FillCache;->this$0:Lorg/xbmc/kodi/Splash;

    invoke-static {v0}, Lorg/xbmc/kodi/Splash;->access$700(Lorg/xbmc/kodi/Splash;)Ljava/io/File;

    move-result-object v0

    iget-object v1, p0, Lorg/xbmc/kodi/Splash$FillCache;->this$0:Lorg/xbmc/kodi/Splash;

    invoke-static {v1}, Lorg/xbmc/kodi/Splash;->access$800(Lorg/xbmc/kodi/Splash;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/io/File;->setLastModified(J)Z
    :try_end_1a9
    .catch Ljava/io/FileNotFoundException; {:try_start_193 .. :try_end_1a9} :catch_127
    .catch Ljava/io/IOException; {:try_start_193 .. :try_end_1a9} :catch_164

    .line 374
    iget-object v0, p0, Lorg/xbmc/kodi/Splash$FillCache;->this$0:Lorg/xbmc/kodi/Splash;

    const/4 v1, 0x6

    invoke-static {v0, v1}, Lorg/xbmc/kodi/Splash;->access$002(Lorg/xbmc/kodi/Splash;I)I

    .line 375
    new-array v0, v9, [Ljava/lang/Integer;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v7

    invoke-virtual {p0, v0}, Lorg/xbmc/kodi/Splash$FillCache;->publishProgress([Ljava/lang/Object;)V

    .line 377
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto/16 :goto_136
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 273
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lorg/xbmc/kodi/Splash$FillCache;->doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .registers 4

    .prologue
    .line 396
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 397
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-gez v0, :cond_f

    .line 398
    iget-object v0, p0, Lorg/xbmc/kodi/Splash$FillCache;->this$0:Lorg/xbmc/kodi/Splash;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/xbmc/kodi/Splash;->access$002(Lorg/xbmc/kodi/Splash;I)I

    .line 401
    :cond_f
    iget-object v0, p0, Lorg/xbmc/kodi/Splash$FillCache;->this$0:Lorg/xbmc/kodi/Splash;

    invoke-static {v0}, Lorg/xbmc/kodi/Splash;->access$1000(Lorg/xbmc/kodi/Splash;)Lorg/xbmc/kodi/Splash$StateMachine;

    move-result-object v0

    iget-object v1, p0, Lorg/xbmc/kodi/Splash$FillCache;->this$0:Lorg/xbmc/kodi/Splash;

    invoke-static {v1}, Lorg/xbmc/kodi/Splash;->access$000(Lorg/xbmc/kodi/Splash;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/xbmc/kodi/Splash$StateMachine;->sendEmptyMessage(I)Z

    .line 402
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 273
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lorg/xbmc/kodi/Splash$FillCache;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 382
    iget-object v0, p0, Lorg/xbmc/kodi/Splash$FillCache;->this$0:Lorg/xbmc/kodi/Splash;

    invoke-static {v0}, Lorg/xbmc/kodi/Splash;->access$000(Lorg/xbmc/kodi/Splash;)I

    move-result v0

    packed-switch v0, :pswitch_data_3a

    .line 392
    :goto_a
    return-void

    .line 384
    :pswitch_b
    iget-object v0, p0, Lorg/xbmc/kodi/Splash$FillCache;->mSplash:Lorg/xbmc/kodi/Splash;

    invoke-static {v0}, Lorg/xbmc/kodi/Splash;->access$200(Lorg/xbmc/kodi/Splash;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "Preparing for first run. Please wait..."

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 385
    iget-object v0, p0, Lorg/xbmc/kodi/Splash$FillCache;->mSplash:Lorg/xbmc/kodi/Splash;

    invoke-static {v0}, Lorg/xbmc/kodi/Splash;->access$300(Lorg/xbmc/kodi/Splash;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 386
    iget-object v0, p0, Lorg/xbmc/kodi/Splash$FillCache;->mSplash:Lorg/xbmc/kodi/Splash;

    invoke-static {v0}, Lorg/xbmc/kodi/Splash;->access$300(Lorg/xbmc/kodi/Splash;)Landroid/widget/ProgressBar;

    move-result-object v0

    aget-object v1, p1, v2

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto :goto_a

    .line 389
    :pswitch_2f
    iget-object v0, p0, Lorg/xbmc/kodi/Splash$FillCache;->mSplash:Lorg/xbmc/kodi/Splash;

    invoke-static {v0}, Lorg/xbmc/kodi/Splash;->access$300(Lorg/xbmc/kodi/Splash;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_a

    .line 382
    :pswitch_data_3a
    .packed-switch 0x5
        :pswitch_b
        :pswitch_2f
    .end packed-switch
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 273
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lorg/xbmc/kodi/Splash$FillCache;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
