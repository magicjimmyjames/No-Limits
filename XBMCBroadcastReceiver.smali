.class public Lorg/xbmc/kodi/XBMCBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "XBMCBroadcastReceiver.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 8
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method native _onReceive(Landroid/content/Intent;)V
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    .prologue
    .line 15
    const-string v0, "XBMCBroadcastReceiver"

    const-string v1, "Received Intent"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    :try_start_7
    invoke-virtual {p0, p2}, Lorg/xbmc/kodi/XBMCBroadcastReceiver;->_onReceive(Landroid/content/Intent;)V
    :try_end_a
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_7 .. :try_end_a} :catch_b

    .line 21
    :goto_a
    return-void

    .line 18
    :catch_b
    move-exception v0

    .line 19
    const-string v0, "XBMCBroadcastReceiver"

    const-string v1, "Native not registered"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a
.end method
