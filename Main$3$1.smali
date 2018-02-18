.class Lorg/xbmc/kodi/Main$3$1;
.super Ljava/lang/Object;
.source "Main.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/xbmc/kodi/Main$3;->onSystemUiVisibilityChange(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/xbmc/kodi/Main$3;


# direct methods
.method constructor <init>(Lorg/xbmc/kodi/Main$3;)V
    .registers 2

    .prologue
    .line 113
    iput-object p1, p0, Lorg/xbmc/kodi/Main$3$1;->this$1:Lorg/xbmc/kodi/Main$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 116
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_13

    .line 122
    iget-object v0, p0, Lorg/xbmc/kodi/Main$3$1;->this$1:Lorg/xbmc/kodi/Main$3;

    iget-object v0, v0, Lorg/xbmc/kodi/Main$3;->this$0:Lorg/xbmc/kodi/Main;

    invoke-static {v0}, Lorg/xbmc/kodi/Main;->access$200(Lorg/xbmc/kodi/Main;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x1706

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 130
    :cond_13
    return-void
.end method
