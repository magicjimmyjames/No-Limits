.class Lorg/xbmc/kodi/Splash$StateMachine;
.super Landroid/os/Handler;
.source "Splash.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/xbmc/kodi/Splash;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StateMachine"
.end annotation


# instance fields
.field private mSplash:Lorg/xbmc/kodi/Splash;

.field final synthetic this$0:Lorg/xbmc/kodi/Splash;


# direct methods
.method constructor <init>(Lorg/xbmc/kodi/Splash;Lorg/xbmc/kodi/Splash;)V
    .registers 4

    .prologue
    .line 94
    iput-object p1, p0, Lorg/xbmc/kodi/Splash$StateMachine;->this$0:Lorg/xbmc/kodi/Splash;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 92
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/xbmc/kodi/Splash$StateMachine;->mSplash:Lorg/xbmc/kodi/Splash;

    .line 95
    iput-object p2, p0, Lorg/xbmc/kodi/Splash$StateMachine;->mSplash:Lorg/xbmc/kodi/Splash;

    .line 96
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 9

    .prologue
    const/4 v6, 0x0

    const/16 v5, 0x63

    const/4 v2, 0x4

    const/4 v4, 0x1

    .line 101
    iget-object v0, p0, Lorg/xbmc/kodi/Splash$StateMachine;->mSplash:Lorg/xbmc/kodi/Splash;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-static {v0, v1}, Lorg/xbmc/kodi/Splash;->access$002(Lorg/xbmc/kodi/Splash;I)I

    .line 102
    iget-object v0, p0, Lorg/xbmc/kodi/Splash$StateMachine;->mSplash:Lorg/xbmc/kodi/Splash;

    invoke-static {v0}, Lorg/xbmc/kodi/Splash;->access$000(Lorg/xbmc/kodi/Splash;)I

    move-result v0

    sparse-switch v0, :sswitch_data_100

    .line 157
    :goto_15
    :sswitch_15
    return-void

    .line 104
    :sswitch_16
    iget-object v0, p0, Lorg/xbmc/kodi/Splash$StateMachine;->this$0:Lorg/xbmc/kodi/Splash;

    iget-object v1, p0, Lorg/xbmc/kodi/Splash$StateMachine;->mSplash:Lorg/xbmc/kodi/Splash;

    const-string v2, "Error"

    iget-object v3, p0, Lorg/xbmc/kodi/Splash$StateMachine;->this$0:Lorg/xbmc/kodi/Splash;

    invoke-static {v3}, Lorg/xbmc/kodi/Splash;->access$100(Lorg/xbmc/kodi/Splash;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lorg/xbmc/kodi/Splash;->showErrorDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_15

    .line 109
    :sswitch_26
    iget-object v0, p0, Lorg/xbmc/kodi/Splash$StateMachine;->mSplash:Lorg/xbmc/kodi/Splash;

    invoke-static {v0}, Lorg/xbmc/kodi/Splash;->access$200(Lorg/xbmc/kodi/Splash;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "Clearing cache..."

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    iget-object v0, p0, Lorg/xbmc/kodi/Splash$StateMachine;->mSplash:Lorg/xbmc/kodi/Splash;

    invoke-static {v0}, Lorg/xbmc/kodi/Splash;->access$300(Lorg/xbmc/kodi/Splash;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_15

    .line 115
    :sswitch_3b
    new-instance v0, Lorg/xbmc/kodi/Splash$FillCache;

    iget-object v1, p0, Lorg/xbmc/kodi/Splash$StateMachine;->this$0:Lorg/xbmc/kodi/Splash;

    iget-object v2, p0, Lorg/xbmc/kodi/Splash$StateMachine;->mSplash:Lorg/xbmc/kodi/Splash;

    invoke-direct {v0, v1, v2}, Lorg/xbmc/kodi/Splash$FillCache;-><init>(Lorg/xbmc/kodi/Splash;Lorg/xbmc/kodi/Splash;)V

    new-array v1, v6, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lorg/xbmc/kodi/Splash$FillCache;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_15

    .line 120
    :sswitch_4a
    iget-object v0, p0, Lorg/xbmc/kodi/Splash$StateMachine;->mSplash:Lorg/xbmc/kodi/Splash;

    invoke-static {v0, v4}, Lorg/xbmc/kodi/Splash;->access$402(Lorg/xbmc/kodi/Splash;Z)Z

    .line 121
    invoke-virtual {p0, v5}, Lorg/xbmc/kodi/Splash$StateMachine;->sendEmptyMessage(I)Z

    goto :goto_15

    .line 124
    :sswitch_53
    iget-object v0, p0, Lorg/xbmc/kodi/Splash$StateMachine;->mSplash:Lorg/xbmc/kodi/Splash;

    invoke-static {v0}, Lorg/xbmc/kodi/Splash;->access$200(Lorg/xbmc/kodi/Splash;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "Waiting for external storage..."

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 125
    iget-object v0, p0, Lorg/xbmc/kodi/Splash$StateMachine;->mSplash:Lorg/xbmc/kodi/Splash;

    invoke-static {v0}, Lorg/xbmc/kodi/Splash;->access$300(Lorg/xbmc/kodi/Splash;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_15

    .line 128
    :sswitch_68
    iget-object v0, p0, Lorg/xbmc/kodi/Splash$StateMachine;->mSplash:Lorg/xbmc/kodi/Splash;

    invoke-static {v0}, Lorg/xbmc/kodi/Splash;->access$200(Lorg/xbmc/kodi/Splash;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "External storage OK..."

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 129
    iget-object v0, p0, Lorg/xbmc/kodi/Splash$StateMachine;->this$0:Lorg/xbmc/kodi/Splash;

    invoke-static {v0, v4}, Lorg/xbmc/kodi/Splash;->access$502(Lorg/xbmc/kodi/Splash;Z)Z

    .line 130
    iget-object v0, p0, Lorg/xbmc/kodi/Splash$StateMachine;->mSplash:Lorg/xbmc/kodi/Splash;

    invoke-virtual {v0}, Lorg/xbmc/kodi/Splash;->stopWatchingExternalStorage()V

    .line 131
    iget-object v0, p0, Lorg/xbmc/kodi/Splash$StateMachine;->mSplash:Lorg/xbmc/kodi/Splash;

    invoke-static {v0}, Lorg/xbmc/kodi/Splash;->access$400(Lorg/xbmc/kodi/Splash;)Z

    move-result v0

    if-eqz v0, :cond_89

    .line 132
    invoke-virtual {p0, v5}, Lorg/xbmc/kodi/Splash$StateMachine;->sendEmptyMessage(I)Z

    goto :goto_15

    .line 134
    :cond_89
    iget-object v0, p0, Lorg/xbmc/kodi/Splash$StateMachine;->this$0:Lorg/xbmc/kodi/Splash;

    invoke-static {v0}, Lorg/xbmc/kodi/Splash;->access$600(Lorg/xbmc/kodi/Splash;)V

    .line 135
    iget-object v0, p0, Lorg/xbmc/kodi/Splash$StateMachine;->this$0:Lorg/xbmc/kodi/Splash;

    invoke-static {v0}, Lorg/xbmc/kodi/Splash;->access$000(Lorg/xbmc/kodi/Splash;)I

    move-result v0

    if-ne v0, v4, :cond_99

    .line 136
    invoke-virtual {p0, v4}, Lorg/xbmc/kodi/Splash$StateMachine;->sendEmptyMessage(I)Z

    .line 138
    :cond_99
    iget-object v0, p0, Lorg/xbmc/kodi/Splash$StateMachine;->this$0:Lorg/xbmc/kodi/Splash;

    invoke-static {v0}, Lorg/xbmc/kodi/Splash;->access$700(Lorg/xbmc/kodi/Splash;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_d5

    iget-object v0, p0, Lorg/xbmc/kodi/Splash$StateMachine;->this$0:Lorg/xbmc/kodi/Splash;

    invoke-static {v0}, Lorg/xbmc/kodi/Splash;->access$700(Lorg/xbmc/kodi/Splash;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    iget-object v2, p0, Lorg/xbmc/kodi/Splash$StateMachine;->this$0:Lorg/xbmc/kodi/Splash;

    invoke-static {v2}, Lorg/xbmc/kodi/Splash;->access$800(Lorg/xbmc/kodi/Splash;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-ltz v0, :cond_d5

    iget-object v0, p0, Lorg/xbmc/kodi/Splash$StateMachine;->this$0:Lorg/xbmc/kodi/Splash;

    invoke-static {v0}, Lorg/xbmc/kodi/Splash;->access$900(Lorg/xbmc/kodi/Splash;)Z

    move-result v0

    if-nez v0, :cond_d5

    .line 139
    iget-object v0, p0, Lorg/xbmc/kodi/Splash$StateMachine;->this$0:Lorg/xbmc/kodi/Splash;

    const/4 v1, 0x6

    invoke-static {v0, v1}, Lorg/xbmc/kodi/Splash;->access$002(Lorg/xbmc/kodi/Splash;I)I

    .line 140
    iget-object v0, p0, Lorg/xbmc/kodi/Splash$StateMachine;->this$0:Lorg/xbmc/kodi/Splash;

    invoke-static {v0, v4}, Lorg/xbmc/kodi/Splash;->access$402(Lorg/xbmc/kodi/Splash;Z)Z

    .line 142
    invoke-virtual {p0, v5}, Lorg/xbmc/kodi/Splash$StateMachine;->sendEmptyMessage(I)Z

    goto/16 :goto_15

    .line 144
    :cond_d5
    new-instance v0, Lorg/xbmc/kodi/Splash$FillCache;

    iget-object v1, p0, Lorg/xbmc/kodi/Splash$StateMachine;->this$0:Lorg/xbmc/kodi/Splash;

    iget-object v2, p0, Lorg/xbmc/kodi/Splash$StateMachine;->mSplash:Lorg/xbmc/kodi/Splash;

    invoke-direct {v0, v1, v2}, Lorg/xbmc/kodi/Splash$FillCache;-><init>(Lorg/xbmc/kodi/Splash;Lorg/xbmc/kodi/Splash;)V

    new-array v1, v6, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lorg/xbmc/kodi/Splash$FillCache;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_15

    .line 150
    :sswitch_e5
    iget-object v0, p0, Lorg/xbmc/kodi/Splash$StateMachine;->mSplash:Lorg/xbmc/kodi/Splash;

    invoke-static {v0}, Lorg/xbmc/kodi/Splash;->access$200(Lorg/xbmc/kodi/Splash;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "Starting Kodi..."

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 151
    iget-object v0, p0, Lorg/xbmc/kodi/Splash$StateMachine;->mSplash:Lorg/xbmc/kodi/Splash;

    invoke-static {v0}, Lorg/xbmc/kodi/Splash;->access$300(Lorg/xbmc/kodi/Splash;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 152
    iget-object v0, p0, Lorg/xbmc/kodi/Splash$StateMachine;->mSplash:Lorg/xbmc/kodi/Splash;

    invoke-virtual {v0}, Lorg/xbmc/kodi/Splash;->startXBMC()V

    goto/16 :goto_15

    .line 102
    :sswitch_data_100
    .sparse-switch
        0x1 -> :sswitch_16
        0x2 -> :sswitch_15
        0x4 -> :sswitch_26
        0x5 -> :sswitch_15
        0x6 -> :sswitch_4a
        0x7 -> :sswitch_53
        0x8 -> :sswitch_68
        0x5a -> :sswitch_15
        0x5b -> :sswitch_3b
        0x63 -> :sswitch_e5
    .end sparse-switch
.end method
