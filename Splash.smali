.class public Lorg/xbmc/kodi/Splash;
.super Landroid/app/Activity;
.source "Splash.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/xbmc/kodi/Splash$FillCache;,
        Lorg/xbmc/kodi/Splash$DownloadObb;,
        Lorg/xbmc/kodi/Splash$StateMachine;
    }
.end annotation


# static fields
.field private static final Caching:I = 0x5

.field private static final CachingDone:I = 0x6

.field private static final Checking:I = 0x2

.field private static final ChecksDone:I = 0x3

.field private static final Clearing:I = 0x4

.field private static final DownloadObbDone:I = 0x5b

.field private static final DownloadingObb:I = 0x5a

.field private static final InError:I = 0x1

.field private static final StartingXBMC:I = 0x63

.field private static final StorageChecked:I = 0x8

.field private static final TAG:Ljava/lang/String; = "Kodi"

.field private static final Uninitialized:I = 0x0

.field private static final WaitingStorageChecked:I = 0x7


# instance fields
.field private fPackagePath:Ljava/io/File;

.field private fXbmcHome:Ljava/io/File;

.field private mCachingDone:Z

.field private mCpuinfo:Ljava/lang/String;

.field private mErrorMsg:Ljava/lang/String;

.field private mExternalStorageChecked:Z

.field private mExternalStorageReceiver:Landroid/content/BroadcastReceiver;

.field private mInstallLibs:Z

.field private mMounts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mProgress:Landroid/widget/ProgressBar;

.field private mState:I

.field private mStateMachine:Lorg/xbmc/kodi/Splash$StateMachine;

.field private mTextView:Landroid/widget/TextView;

.field public myAlertDialog:Landroid/app/AlertDialog;

.field private sPackagePath:Ljava/lang/String;

.field private sXbmcHome:Ljava/lang/String;

.field private sXbmcdata:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 52
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 69
    const-string v0, ""

    iput-object v0, p0, Lorg/xbmc/kodi/Splash;->mCpuinfo:Ljava/lang/String;

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/xbmc/kodi/Splash;->mMounts:Ljava/util/ArrayList;

    .line 71
    const-string v0, ""

    iput-object v0, p0, Lorg/xbmc/kodi/Splash;->mErrorMsg:Ljava/lang/String;

    .line 73
    iput-object v1, p0, Lorg/xbmc/kodi/Splash;->mProgress:Landroid/widget/ProgressBar;

    .line 74
    iput-object v1, p0, Lorg/xbmc/kodi/Splash;->mTextView:Landroid/widget/TextView;

    .line 76
    iput v2, p0, Lorg/xbmc/kodi/Splash;->mState:I

    .line 79
    const-string v0, ""

    iput-object v0, p0, Lorg/xbmc/kodi/Splash;->sPackagePath:Ljava/lang/String;

    .line 80
    const-string v0, ""

    iput-object v0, p0, Lorg/xbmc/kodi/Splash;->sXbmcHome:Ljava/lang/String;

    .line 81
    const-string v0, ""

    iput-object v0, p0, Lorg/xbmc/kodi/Splash;->sXbmcdata:Ljava/lang/String;

    .line 82
    iput-object v1, p0, Lorg/xbmc/kodi/Splash;->fPackagePath:Ljava/io/File;

    .line 83
    iput-object v1, p0, Lorg/xbmc/kodi/Splash;->fXbmcHome:Ljava/io/File;

    .line 85
    iput-object v1, p0, Lorg/xbmc/kodi/Splash;->mExternalStorageReceiver:Landroid/content/BroadcastReceiver;

    .line 86
    iput-boolean v2, p0, Lorg/xbmc/kodi/Splash;->mExternalStorageChecked:Z

    .line 87
    iput-boolean v2, p0, Lorg/xbmc/kodi/Splash;->mCachingDone:Z

    .line 88
    iput-boolean v2, p0, Lorg/xbmc/kodi/Splash;->mInstallLibs:Z

    .line 159
    new-instance v0, Lorg/xbmc/kodi/Splash$StateMachine;

    invoke-direct {v0, p0, p0}, Lorg/xbmc/kodi/Splash$StateMachine;-><init>(Lorg/xbmc/kodi/Splash;Lorg/xbmc/kodi/Splash;)V

    iput-object v0, p0, Lorg/xbmc/kodi/Splash;->mStateMachine:Lorg/xbmc/kodi/Splash$StateMachine;

    .line 273
    return-void
.end method

.method private CheckCpuFeature(Ljava/lang/String;)Z
    .registers 4

    .prologue
    .line 619
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "(?i):.*?\\s"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "(?:\\s|$)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 620
    iget-object v1, p0, Lorg/xbmc/kodi/Splash;->mCpuinfo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 621
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    return v0
.end method

.method private MigrateUserData()V
    .registers 7

    .prologue
    const/4 v2, 0x0

    .line 522
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lorg/xbmc/kodi/Splash;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/org.xbmc.xbmc/files/.xbmc"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 523
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 524
    invoke-virtual {v1}, Ljava/io/File;->exists()Z
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_29} :catch_fd

    move-result v0

    if-nez v0, :cond_2d

    .line 552
    :cond_2c
    :goto_2c
    return-void

    .line 530
    :cond_2d
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0, v2}, Lorg/xbmc/kodi/Splash;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    const-string v3, ".kodi"

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 531
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/.kodi_data_was_migrated"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 532
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 534
    const-string v2, "Kodi"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "External_dir = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2c

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_2c

    .line 536
    const-string v2, "Kodi"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "XBMC user data detected at "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", migrating to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_d8

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-nez v2, :cond_d8

    .line 538
    const-string v1, "Kodi"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error creating "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2c

    .line 541
    :cond_d8
    invoke-virtual {v1, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_f4

    .line 543
    :try_start_de
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_e6
    .catch Ljava/io/IOException; {:try_start_de .. :try_end_e6} :catch_ef

    .line 547
    :goto_e6
    const-string v0, "Kodi"

    const-string v1, "XBMC user data migrated to Kodi successfully"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2c

    .line 544
    :catch_ef
    move-exception v0

    .line 545
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_e6

    .line 549
    :cond_f4
    const-string v0, "Kodi"

    const-string v1, "Error migrating XBMC user data"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2c

    .line 526
    :catch_fd
    move-exception v0

    goto/16 :goto_2c
.end method

.method private ParseCpuFeature()Z
    .registers 7

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 559
    const/4 v2, 0x2

    :try_start_3
    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "/system/bin/cat"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "/proc/cpuinfo"

    aput-object v4, v2, v3

    .line 560
    new-instance v3, Ljava/lang/ProcessBuilder;

    invoke-direct {v3, v2}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    .line 562
    invoke-virtual {v3}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object v2

    .line 563
    invoke-virtual {v2}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    .line 564
    const/16 v3, 0x400

    new-array v3, v3, [B

    .line 565
    :goto_20
    invoke-virtual {v2, v3}, Ljava/io/InputStream;->read([B)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_48

    .line 566
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lorg/xbmc/kodi/Splash;->mCpuinfo:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v3}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lorg/xbmc/kodi/Splash;->mCpuinfo:Ljava/lang/String;
    :try_end_41
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_41} :catch_42

    goto :goto_20

    .line 569
    :catch_42
    move-exception v0

    .line 570
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move v0, v1

    .line 573
    :goto_47
    return v0

    .line 568
    :cond_48
    :try_start_48
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4b
    .catch Ljava/io/IOException; {:try_start_48 .. :try_end_4b} :catch_42

    goto :goto_47
.end method

.method private ParseMounts()Z
    .registers 10

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    const/4 v8, 0x2

    .line 585
    const-string v2, "^(.+?)\\s+(.+?)\\s+(.+?)\\s"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    .line 586
    const-string v2, ""

    .line 589
    const/4 v4, 0x2

    :try_start_c
    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "/system/bin/cat"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "/proc/mounts"

    aput-object v6, v4, v5

    .line 590
    new-instance v5, Ljava/lang/ProcessBuilder;

    invoke-direct {v5, v4}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    .line 592
    invoke-virtual {v5}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object v4

    .line 593
    invoke-virtual {v4}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    .line 594
    const/16 v5, 0x400

    new-array v5, v5, [B

    .line 595
    :goto_29
    invoke-virtual {v4, v5}, Ljava/io/InputStream;->read([B)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_47

    .line 596
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v5}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_29

    .line 598
    :cond_47
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_4a
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_4a} :catch_b9

    .line 604
    const-string v4, "\n"

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 605
    :goto_50
    array-length v4, v2

    if-ge v0, v4, :cond_be

    .line 606
    const-string v4, "Kodi"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mount: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v2, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 607
    aget-object v4, v2, v0

    invoke-virtual {v3, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 608
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-eqz v5, :cond_b6

    .line 609
    invoke-virtual {v4, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "/dev/block/vold"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b6

    invoke-virtual {v4, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "/mnt/secure/asec"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_b6

    .line 610
    const-string v5, "Kodi"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "addind mount: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 611
    iget-object v5, p0, Lorg/xbmc/kodi/Splash;->mMounts:Ljava/util/ArrayList;

    invoke-virtual {v4, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 605
    :cond_b6
    add-int/lit8 v0, v0, 0x1

    goto :goto_50

    .line 599
    :catch_b9
    move-exception v1

    .line 600
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 615
    :goto_bd
    return v0

    :cond_be
    move v0, v1

    goto :goto_bd
.end method

.method private SetupEnvironment()V
    .registers 8

    .prologue
    const/16 v0, 0x14

    const/4 v6, 0x0

    .line 430
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/xbmc_env.properties"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 431
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_b9

    .line 432
    const-string v2, "Kodi"

    const-string v3, "Loading xbmc_env.properties"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    :try_start_30
    new-instance v2, Ljava/util/Properties;

    invoke-static {}, Ljava/lang/System;->getProperties()Ljava/util/Properties;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/Properties;-><init>(Ljava/util/Properties;)V

    .line 435
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 436
    invoke-virtual {v2, v3}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 437
    invoke-static {v2}, Ljava/lang/System;->setProperties(Ljava/util/Properties;)V

    .line 439
    const-string v1, "xbmc.home"

    const-string v2, ""

    invoke-static {v1, v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/xbmc/kodi/Splash;->sXbmcHome:Ljava/lang/String;

    .line 440
    iget-object v1, p0, Lorg/xbmc/kodi/Splash;->sXbmcHome:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_7f

    .line 441
    new-instance v2, Ljava/io/File;

    iget-object v1, p0, Lorg/xbmc/kodi/Splash;->sXbmcHome:Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move v1, v0

    .line 443
    :goto_5e
    invoke-virtual {v2}, Ljava/io/File;->exists()Z
    :try_end_61
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_30 .. :try_end_61} :catch_1c7
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_61} :catch_1d1

    move-result v3

    if-nez v3, :cond_6e

    if-lez v1, :cond_6e

    .line 446
    const-wide/16 v4, 0x3e8

    :try_start_68
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_6b
    .catch Ljava/lang/InterruptedException; {:try_start_68 .. :try_end_6b} :catch_1db
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_68 .. :try_end_6b} :catch_1c7
    .catch Ljava/io/IOException; {:try_start_68 .. :try_end_6b} :catch_1d1

    .line 450
    add-int/lit8 v1, v1, -0x1

    goto :goto_5e

    .line 452
    :cond_6e
    :try_start_6e
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_7f

    .line 453
    const-string v1, "xbmc.home"

    const-string v2, ""

    invoke-static {v1, v2}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 454
    const-string v1, ""

    iput-object v1, p0, Lorg/xbmc/kodi/Splash;->sXbmcHome:Ljava/lang/String;

    .line 458
    :cond_7f
    const-string v1, "xbmc.data"

    const-string v2, ""

    invoke-static {v1, v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/xbmc/kodi/Splash;->sXbmcdata:Ljava/lang/String;

    .line 459
    iget-object v1, p0, Lorg/xbmc/kodi/Splash;->sXbmcdata:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_b9

    .line 460
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lorg/xbmc/kodi/Splash;->sXbmcdata:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 462
    :goto_98
    invoke-virtual {v1}, Ljava/io/File;->exists()Z
    :try_end_9b
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_6e .. :try_end_9b} :catch_1c7
    .catch Ljava/io/IOException; {:try_start_6e .. :try_end_9b} :catch_1d1

    move-result v2

    if-nez v2, :cond_a8

    if-lez v0, :cond_a8

    .line 465
    const-wide/16 v2, 0x3e8

    :try_start_a2
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_a5
    .catch Ljava/lang/InterruptedException; {:try_start_a2 .. :try_end_a5} :catch_1de
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_a2 .. :try_end_a5} :catch_1c7
    .catch Ljava/io/IOException; {:try_start_a2 .. :try_end_a5} :catch_1d1

    .line 469
    add-int/lit8 v0, v0, -0x1

    goto :goto_98

    .line 472
    :cond_a8
    :try_start_a8
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_b9

    .line 473
    const-string v0, ""

    iput-object v0, p0, Lorg/xbmc/kodi/Splash;->sXbmcdata:Ljava/lang/String;

    .line 474
    const-string v0, "xbmc.data"

    const-string v1, ""

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_b9
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_a8 .. :try_end_b9} :catch_1c7
    .catch Ljava/io/IOException; {:try_start_a8 .. :try_end_b9} :catch_1d1

    .line 484
    :cond_b9
    :goto_b9
    iget-object v0, p0, Lorg/xbmc/kodi/Splash;->sXbmcHome:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_de

    .line 485
    invoke-virtual {p0}, Lorg/xbmc/kodi/Splash;->getCacheDir()Ljava/io/File;

    move-result-object v0

    .line 486
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/apk"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/xbmc/kodi/Splash;->sXbmcHome:Ljava/lang/String;

    .line 489
    :cond_de
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lorg/xbmc/kodi/Splash;->sXbmcHome:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/xbmc/kodi/Splash;->fXbmcHome:Ljava/io/File;

    .line 491
    invoke-virtual {p0}, Lorg/xbmc/kodi/Splash;->getPackageResourcePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/xbmc/kodi/Splash;->sPackagePath:Ljava/lang/String;

    .line 492
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lorg/xbmc/kodi/Splash;->sPackagePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/xbmc/kodi/Splash;->fPackagePath:Ljava/io/File;

    .line 493
    const-string v0, ""

    .line 494
    iget-object v1, p0, Lorg/xbmc/kodi/Splash;->fPackagePath:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/32 v4, 0x2800000

    cmp-long v1, v2, v4

    if-gez v1, :cond_1c6

    .line 496
    const-string v1, "Kodi.obb"

    const-string v2, ""

    invoke-static {v1, v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/xbmc/kodi/Splash;->sPackagePath:Ljava/lang/String;

    .line 497
    iget-object v1, p0, Lorg/xbmc/kodi/Splash;->sPackagePath:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17a

    .line 501
    :try_start_119
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "main."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/xbmc/kodi/Splash;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p0}, Lorg/xbmc/kodi/Splash;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/xbmc/kodi/Splash;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".obb"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 502
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/Android/obb/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/xbmc/kodi/Splash;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/xbmc/kodi/Splash;->sPackagePath:Ljava/lang/String;
    :try_end_17a
    .catch Ljava/lang/Exception; {:try_start_119 .. :try_end_17a} :catch_1e1

    .line 507
    :cond_17a
    :goto_17a
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lorg/xbmc/kodi/Splash;->sPackagePath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lorg/xbmc/kodi/Splash;->fPackagePath:Ljava/io/File;

    .line 508
    iget-object v1, p0, Lorg/xbmc/kodi/Splash;->fPackagePath:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/32 v4, 0x1400000

    cmp-long v1, v2, v4

    if-gez v1, :cond_195

    .line 509
    iget-object v1, p0, Lorg/xbmc/kodi/Splash;->fPackagePath:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 510
    :cond_195
    iget-object v1, p0, Lorg/xbmc/kodi/Splash;->fPackagePath:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1c6

    .line 512
    const/16 v1, 0x5a

    iput v1, p0, Lorg/xbmc/kodi/Splash;->mState:I

    .line 513
    new-instance v1, Lorg/xbmc/kodi/Splash$DownloadObb;

    invoke-direct {v1, p0, p0}, Lorg/xbmc/kodi/Splash$DownloadObb;-><init>(Lorg/xbmc/kodi/Splash;Lorg/xbmc/kodi/Splash;)V

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "http://mirrors.kodi.tv/releases/android/obb/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v6

    const/4 v0, 0x1

    iget-object v3, p0, Lorg/xbmc/kodi/Splash;->sPackagePath:Ljava/lang/String;

    aput-object v3, v2, v0

    invoke-virtual {v1, v2}, Lorg/xbmc/kodi/Splash$DownloadObb;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 516
    :cond_1c6
    return-void

    .line 478
    :catch_1c7
    move-exception v0

    .line 479
    const-string v0, "Kodi"

    const-string v1, "Cannot find xbmc_env properties file"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b9

    .line 480
    :catch_1d1
    move-exception v0

    .line 481
    const-string v0, "Kodi"

    const-string v1, "Failed to open xbmc_env properties file"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b9

    .line 447
    :catch_1db
    move-exception v3

    goto/16 :goto_5e

    .line 466
    :catch_1de
    move-exception v2

    goto/16 :goto_98

    .line 504
    :catch_1e1
    move-exception v1

    goto :goto_17a
.end method

.method static synthetic access$000(Lorg/xbmc/kodi/Splash;)I
    .registers 2

    .prologue
    .line 52
    iget v0, p0, Lorg/xbmc/kodi/Splash;->mState:I

    return v0
.end method

.method static synthetic access$002(Lorg/xbmc/kodi/Splash;I)I
    .registers 2

    .prologue
    .line 52
    iput p1, p0, Lorg/xbmc/kodi/Splash;->mState:I

    return p1
.end method

.method static synthetic access$100(Lorg/xbmc/kodi/Splash;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 52
    iget-object v0, p0, Lorg/xbmc/kodi/Splash;->mErrorMsg:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lorg/xbmc/kodi/Splash;)Lorg/xbmc/kodi/Splash$StateMachine;
    .registers 2

    .prologue
    .line 52
    iget-object v0, p0, Lorg/xbmc/kodi/Splash;->mStateMachine:Lorg/xbmc/kodi/Splash$StateMachine;

    return-object v0
.end method

.method static synthetic access$102(Lorg/xbmc/kodi/Splash;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 52
    iput-object p1, p0, Lorg/xbmc/kodi/Splash;->mErrorMsg:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1100(Lorg/xbmc/kodi/Splash;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 52
    iget-object v0, p0, Lorg/xbmc/kodi/Splash;->sPackagePath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1200(Lorg/xbmc/kodi/Splash;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 52
    iget-object v0, p0, Lorg/xbmc/kodi/Splash;->sXbmcHome:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lorg/xbmc/kodi/Splash;)Landroid/widget/TextView;
    .registers 2

    .prologue
    .line 52
    iget-object v0, p0, Lorg/xbmc/kodi/Splash;->mTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$300(Lorg/xbmc/kodi/Splash;)Landroid/widget/ProgressBar;
    .registers 2

    .prologue
    .line 52
    iget-object v0, p0, Lorg/xbmc/kodi/Splash;->mProgress:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$400(Lorg/xbmc/kodi/Splash;)Z
    .registers 2

    .prologue
    .line 52
    iget-boolean v0, p0, Lorg/xbmc/kodi/Splash;->mCachingDone:Z

    return v0
.end method

.method static synthetic access$402(Lorg/xbmc/kodi/Splash;Z)Z
    .registers 2

    .prologue
    .line 52
    iput-boolean p1, p0, Lorg/xbmc/kodi/Splash;->mCachingDone:Z

    return p1
.end method

.method static synthetic access$502(Lorg/xbmc/kodi/Splash;Z)Z
    .registers 2

    .prologue
    .line 52
    iput-boolean p1, p0, Lorg/xbmc/kodi/Splash;->mExternalStorageChecked:Z

    return p1
.end method

.method static synthetic access$600(Lorg/xbmc/kodi/Splash;)V
    .registers 1

    .prologue
    .line 52
    invoke-direct {p0}, Lorg/xbmc/kodi/Splash;->SetupEnvironment()V

    return-void
.end method

.method static synthetic access$700(Lorg/xbmc/kodi/Splash;)Ljava/io/File;
    .registers 2

    .prologue
    .line 52
    iget-object v0, p0, Lorg/xbmc/kodi/Splash;->fXbmcHome:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$800(Lorg/xbmc/kodi/Splash;)Ljava/io/File;
    .registers 2

    .prologue
    .line 52
    iget-object v0, p0, Lorg/xbmc/kodi/Splash;->fPackagePath:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$900(Lorg/xbmc/kodi/Splash;)Z
    .registers 2

    .prologue
    .line 52
    iget-boolean v0, p0, Lorg/xbmc/kodi/Splash;->mInstallLibs:Z

    return v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 12

    .prologue
    const/4 v9, 0x6

    const/16 v8, 0x5a

    const/4 v7, 0x3

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 668
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 671
    invoke-virtual {p0}, Lorg/xbmc/kodi/Splash;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    const-string v3, "activity"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 673
    const v3, 0x7fffffff

    invoke-virtual {v0, v3}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v0

    .line 675
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_20
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 676
    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "ComponentInfo{org.xbmc.kodi/org.xbmc.kodi.Main}"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 679
    invoke-virtual {p0}, Lorg/xbmc/kodi/Splash;->startXBMC()V

    .line 789
    :goto_3d
    return-void

    .line 683
    :cond_3e
    iget-object v0, p0, Lorg/xbmc/kodi/Splash;->mStateMachine:Lorg/xbmc/kodi/Splash$StateMachine;

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Lorg/xbmc/kodi/Splash$StateMachine;->sendEmptyMessage(I)Z

    .line 685
    const-string v3, ""

    .line 686
    const-string v0, ""

    .line 689
    :try_start_48
    sget-object v4, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x3

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_4f
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_48 .. :try_end_4f} :catch_163

    move-result-object v3

    .line 698
    :goto_50
    :try_start_50
    sget-object v4, Landroid/os/Build;->CPU_ABI2:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x3

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_57
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_50 .. :try_end_57} :catch_225

    move-result-object v0

    .line 701
    :goto_58
    iget v4, p0, Lorg/xbmc/kodi/Splash;->mState:I

    if-eq v4, v2, :cond_bb

    .line 707
    :try_start_5c
    invoke-virtual {p0}, Lorg/xbmc/kodi/Splash;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 708
    const/high16 v5, 0x7f040000

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v4

    .line 709
    new-instance v5, Ljava/util/Properties;

    invoke-direct {v5}, Ljava/util/Properties;-><init>()V

    .line 710
    invoke-virtual {v5, v4}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 712
    const-string v4, "native_arch"

    invoke-virtual {v5, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_bb

    const-string v4, "native_arch"

    invoke-virtual {v5, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_bb

    .line 715
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "This Kodi package is not compatible with your device (device="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " vs. package="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "native_arch"

    invoke-virtual {v5, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ").\nPlease check the <a href=\"http://wiki.kodi.tv/index.php?title=XBMC_for_Android_specific_FAQ\">Kodi Android wiki</a> for more information."

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/xbmc/kodi/Splash;->mErrorMsg:Ljava/lang/String;

    .line 716
    const-string v0, "Kodi"

    iget-object v4, p0, Lorg/xbmc/kodi/Splash;->mErrorMsg:Ljava/lang/String;

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 717
    const/4 v0, 0x1

    iput v0, p0, Lorg/xbmc/kodi/Splash;->mState:I
    :try_end_bb
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_5c .. :try_end_bb} :catch_186
    .catch Ljava/io/IOException; {:try_start_5c .. :try_end_bb} :catch_196

    .line 730
    :cond_bb
    :goto_bb
    iget v0, p0, Lorg/xbmc/kodi/Splash;->mState:I

    if-eq v0, v2, :cond_da

    .line 731
    const-string v0, "arm"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_da

    .line 733
    invoke-direct {p0}, Lorg/xbmc/kodi/Splash;->ParseCpuFeature()Z

    move-result v0

    .line 735
    if-nez v0, :cond_1a6

    .line 736
    const-string v0, "Error! Cannot parse CPU features."

    iput-object v0, p0, Lorg/xbmc/kodi/Splash;->mErrorMsg:Ljava/lang/String;

    .line 737
    const-string v0, "Kodi"

    iget-object v3, p0, Lorg/xbmc/kodi/Splash;->mErrorMsg:Ljava/lang/String;

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 738
    iput v2, p0, Lorg/xbmc/kodi/Splash;->mState:I

    .line 750
    :cond_da
    :goto_da
    const-string v0, "Kodi"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "External storage = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "; state = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 751
    const-string v0, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_116

    .line 752
    iput-boolean v2, p0, Lorg/xbmc/kodi/Splash;->mExternalStorageChecked:Z

    .line 754
    :cond_116
    iget v0, p0, Lorg/xbmc/kodi/Splash;->mState:I

    if-eq v0, v2, :cond_14e

    iget-boolean v0, p0, Lorg/xbmc/kodi/Splash;->mExternalStorageChecked:Z

    if-eqz v0, :cond_14e

    .line 755
    iput v7, p0, Lorg/xbmc/kodi/Splash;->mState:I

    .line 757
    invoke-direct {p0}, Lorg/xbmc/kodi/Splash;->SetupEnvironment()V

    .line 758
    invoke-direct {p0}, Lorg/xbmc/kodi/Splash;->MigrateUserData()V

    .line 760
    iget v0, p0, Lorg/xbmc/kodi/Splash;->mState:I

    if-eq v0, v8, :cond_14e

    iget v0, p0, Lorg/xbmc/kodi/Splash;->mState:I

    if-eq v0, v2, :cond_14e

    iget-object v0, p0, Lorg/xbmc/kodi/Splash;->fXbmcHome:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_14e

    iget-object v0, p0, Lorg/xbmc/kodi/Splash;->fXbmcHome:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    iget-object v0, p0, Lorg/xbmc/kodi/Splash;->fPackagePath:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v6

    cmp-long v0, v4, v6

    if-ltz v0, :cond_14e

    iget-boolean v0, p0, Lorg/xbmc/kodi/Splash;->mInstallLibs:Z

    if-nez v0, :cond_14e

    .line 761
    iput v9, p0, Lorg/xbmc/kodi/Splash;->mState:I

    .line 762
    iput-boolean v2, p0, Lorg/xbmc/kodi/Splash;->mCachingDone:Z

    .line 766
    :cond_14e
    iget v0, p0, Lorg/xbmc/kodi/Splash;->mState:I

    if-eq v0, v8, :cond_1d2

    iget v0, p0, Lorg/xbmc/kodi/Splash;->mState:I

    if-eq v0, v2, :cond_1d2

    iget-boolean v0, p0, Lorg/xbmc/kodi/Splash;->mCachingDone:Z

    if-eqz v0, :cond_1d2

    iget-boolean v0, p0, Lorg/xbmc/kodi/Splash;->mExternalStorageChecked:Z

    if-eqz v0, :cond_1d2

    .line 767
    invoke-virtual {p0}, Lorg/xbmc/kodi/Splash;->startXBMC()V

    goto/16 :goto_3d

    .line 690
    :catch_163
    move-exception v4

    .line 692
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error! Unexpected architecture: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lorg/xbmc/kodi/Splash;->mErrorMsg:Ljava/lang/String;

    .line 693
    const-string v4, "Kodi"

    iget-object v5, p0, Lorg/xbmc/kodi/Splash;->mErrorMsg:Ljava/lang/String;

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 694
    iput v2, p0, Lorg/xbmc/kodi/Splash;->mState:I

    goto/16 :goto_50

    .line 719
    :catch_186
    move-exception v0

    .line 720
    const-string v0, "Cannot find properties file"

    iput-object v0, p0, Lorg/xbmc/kodi/Splash;->mErrorMsg:Ljava/lang/String;

    .line 721
    const-string v0, "Kodi"

    iget-object v4, p0, Lorg/xbmc/kodi/Splash;->mErrorMsg:Ljava/lang/String;

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 722
    iput v2, p0, Lorg/xbmc/kodi/Splash;->mState:I

    goto/16 :goto_bb

    .line 723
    :catch_196
    move-exception v0

    .line 724
    const-string v0, "Failed to open properties file"

    iput-object v0, p0, Lorg/xbmc/kodi/Splash;->mErrorMsg:Ljava/lang/String;

    .line 725
    const-string v0, "Kodi"

    iget-object v4, p0, Lorg/xbmc/kodi/Splash;->mErrorMsg:Ljava/lang/String;

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 726
    iput v2, p0, Lorg/xbmc/kodi/Splash;->mState:I

    goto/16 :goto_bb

    .line 740
    :cond_1a6
    const-string v0, "neon"

    invoke-direct {p0, v0}, Lorg/xbmc/kodi/Splash;->CheckCpuFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1be

    const-string v0, "aarch64"

    invoke-direct {p0, v0}, Lorg/xbmc/kodi/Splash;->CheckCpuFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1be

    const-string v0, "asimd"

    invoke-direct {p0, v0}, Lorg/xbmc/kodi/Splash;->CheckCpuFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1d0

    :cond_1be
    move v0, v2

    .line 741
    :goto_1bf
    if-nez v0, :cond_da

    .line 742
    const-string v0, "This Kodi package is not compatible with your device (NEON).\nPlease check the <a href=\"http://wiki.kodi.tv/index.php?title=XBMC_for_Android_specific_FAQ\">Kodi Android wiki</a> for more information."

    iput-object v0, p0, Lorg/xbmc/kodi/Splash;->mErrorMsg:Ljava/lang/String;

    .line 743
    const-string v0, "Kodi"

    iget-object v3, p0, Lorg/xbmc/kodi/Splash;->mErrorMsg:Ljava/lang/String;

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 744
    iput v2, p0, Lorg/xbmc/kodi/Splash;->mState:I

    goto/16 :goto_da

    :cond_1d0
    move v0, v1

    .line 740
    goto :goto_1bf

    .line 771
    :cond_1d2
    const v0, 0x7f030001

    invoke-virtual {p0, v0}, Lorg/xbmc/kodi/Splash;->setContentView(I)V

    .line 772
    const v0, 0x7f060003

    invoke-virtual {p0, v0}, Lorg/xbmc/kodi/Splash;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lorg/xbmc/kodi/Splash;->mProgress:Landroid/widget/ProgressBar;

    .line 773
    const v0, 0x7f060004

    invoke-virtual {p0, v0}, Lorg/xbmc/kodi/Splash;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lorg/xbmc/kodi/Splash;->mTextView:Landroid/widget/TextView;

    .line 775
    iget v0, p0, Lorg/xbmc/kodi/Splash;->mState:I

    if-eq v0, v8, :cond_1f6

    iget v0, p0, Lorg/xbmc/kodi/Splash;->mState:I

    if-ne v0, v2, :cond_1ff

    .line 776
    :cond_1f6
    iget-object v0, p0, Lorg/xbmc/kodi/Splash;->mStateMachine:Lorg/xbmc/kodi/Splash$StateMachine;

    iget v1, p0, Lorg/xbmc/kodi/Splash;->mState:I

    invoke-virtual {v0, v1}, Lorg/xbmc/kodi/Splash$StateMachine;->sendEmptyMessage(I)Z

    goto/16 :goto_3d

    .line 780
    :cond_1ff
    iget-boolean v0, p0, Lorg/xbmc/kodi/Splash;->mExternalStorageChecked:Z

    if-nez v0, :cond_20e

    .line 781
    invoke-virtual {p0}, Lorg/xbmc/kodi/Splash;->startWatchingExternalStorage()V

    .line 782
    iget-object v0, p0, Lorg/xbmc/kodi/Splash;->mStateMachine:Lorg/xbmc/kodi/Splash$StateMachine;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lorg/xbmc/kodi/Splash$StateMachine;->sendEmptyMessage(I)Z

    goto/16 :goto_3d

    .line 784
    :cond_20e
    iget-boolean v0, p0, Lorg/xbmc/kodi/Splash;->mCachingDone:Z

    if-nez v0, :cond_21e

    .line 785
    new-instance v0, Lorg/xbmc/kodi/Splash$FillCache;

    invoke-direct {v0, p0, p0}, Lorg/xbmc/kodi/Splash$FillCache;-><init>(Lorg/xbmc/kodi/Splash;Lorg/xbmc/kodi/Splash;)V

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lorg/xbmc/kodi/Splash$FillCache;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_3d

    .line 787
    :cond_21e
    iget-object v0, p0, Lorg/xbmc/kodi/Splash;->mStateMachine:Lorg/xbmc/kodi/Splash$StateMachine;

    invoke-virtual {v0, v9}, Lorg/xbmc/kodi/Splash$StateMachine;->sendEmptyMessage(I)Z

    goto/16 :goto_3d

    .line 699
    :catch_225
    move-exception v4

    goto/16 :goto_58
.end method

.method public showErrorDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .prologue
    .line 406
    iget-object v0, p0, Lorg/xbmc/kodi/Splash;->myAlertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lorg/xbmc/kodi/Splash;->myAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 427
    :goto_c
    return-void

    .line 409
    :cond_d
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 410
    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 411
    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 412
    invoke-static {p3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 413
    const-string v1, "Exit"

    new-instance v2, Lorg/xbmc/kodi/Splash$1;

    invoke-direct {v2, p0, p1}, Lorg/xbmc/kodi/Splash$1;-><init>(Lorg/xbmc/kodi/Splash;Landroid/app/Activity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 420
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 421
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lorg/xbmc/kodi/Splash;->myAlertDialog:Landroid/app/AlertDialog;

    .line 422
    iget-object v0, p0, Lorg/xbmc/kodi/Splash;->myAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 425
    iget-object v0, p0, Lorg/xbmc/kodi/Splash;->myAlertDialog:Landroid/app/AlertDialog;

    const v1, 0x102000b

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    goto :goto_c
.end method

.method startWatchingExternalStorage()V
    .registers 3

    .prologue
    .line 635
    new-instance v0, Lorg/xbmc/kodi/Splash$2;

    invoke-direct {v0, p0}, Lorg/xbmc/kodi/Splash$2;-><init>(Lorg/xbmc/kodi/Splash;)V

    iput-object v0, p0, Lorg/xbmc/kodi/Splash;->mExternalStorageReceiver:Landroid/content/BroadcastReceiver;

    .line 642
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 643
    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 644
    const-string v1, "android.intent.action.MEDIA_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 645
    const-string v1, "android.intent.action.MEDIA_SHARED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 646
    const-string v1, "android.intent.action.MEDIA_UNMOUNTABLE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 647
    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 648
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 649
    iget-object v1, p0, Lorg/xbmc/kodi/Splash;->mExternalStorageReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lorg/xbmc/kodi/Splash;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 650
    return-void
.end method

.method protected startXBMC()V
    .registers 3

    .prologue
    .line 659
    invoke-virtual {p0}, Lorg/xbmc/kodi/Splash;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 660
    const-class v1, Lorg/xbmc/kodi/Main;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 661
    const/high16 v1, 0x1000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 662
    invoke-virtual {p0, v0}, Lorg/xbmc/kodi/Splash;->startActivity(Landroid/content/Intent;)V

    .line 663
    invoke-virtual {p0}, Lorg/xbmc/kodi/Splash;->finish()V

    .line 664
    return-void
.end method

.method stopWatchingExternalStorage()V
    .registers 2

    .prologue
    .line 653
    iget-object v0, p0, Lorg/xbmc/kodi/Splash;->mExternalStorageReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_9

    .line 654
    iget-object v0, p0, Lorg/xbmc/kodi/Splash;->mExternalStorageReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lorg/xbmc/kodi/Splash;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 655
    :cond_9
    return-void
.end method

.method updateExternalStorageState()V
    .registers 5

    .prologue
    .line 625
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 626
    const-string v1, "Kodi"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "External storage = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 627
    const-string v1, "mounted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 628
    iget-object v0, p0, Lorg/xbmc/kodi/Splash;->mStateMachine:Lorg/xbmc/kodi/Splash$StateMachine;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lorg/xbmc/kodi/Splash$StateMachine;->sendEmptyMessage(I)Z

    .line 632
    :goto_3d
    return-void

    .line 630
    :cond_3e
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/xbmc/kodi/Splash;->mExternalStorageChecked:Z

    goto :goto_3d
.end method
