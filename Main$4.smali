.class Lorg/xbmc/kodi/Main$4;
.super Ljava/lang/Object;
.source "Main.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/xbmc/kodi/Main;->runNativeOnUiThread(JJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/xbmc/kodi/Main;

.field final synthetic val$funcAddr:J

.field final synthetic val$variantAddr:J


# direct methods
.method constructor <init>(Lorg/xbmc/kodi/Main;JJ)V
    .registers 6

    .prologue
    .line 188
    iput-object p1, p0, Lorg/xbmc/kodi/Main$4;->this$0:Lorg/xbmc/kodi/Main;

    iput-wide p2, p0, Lorg/xbmc/kodi/Main$4;->val$funcAddr:J

    iput-wide p4, p0, Lorg/xbmc/kodi/Main$4;->val$variantAddr:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    .line 192
    iget-object v0, p0, Lorg/xbmc/kodi/Main$4;->this$0:Lorg/xbmc/kodi/Main;

    iget-wide v2, p0, Lorg/xbmc/kodi/Main$4;->val$funcAddr:J

    iget-wide v4, p0, Lorg/xbmc/kodi/Main$4;->val$variantAddr:J

    invoke-static {v0, v2, v3, v4, v5}, Lorg/xbmc/kodi/Main;->access$400(Lorg/xbmc/kodi/Main;JJ)V

    .line 193
    return-void
.end method
