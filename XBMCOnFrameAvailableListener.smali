.class public Lorg/xbmc/kodi/XBMCOnFrameAvailableListener;
.super Ljava/lang/Object;
.source "XBMCOnFrameAvailableListener.java"

# interfaces
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private declared-synchronized signalNewFrame(Landroid/graphics/SurfaceTexture;)V
    .registers 3

    .prologue
    .line 12
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0, p1}, Lorg/xbmc/kodi/XBMCOnFrameAvailableListener;->_onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_6

    .line 13
    monitor-exit p0

    return-void

    .line 12
    :catchall_6
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method native _onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
.end method

.method public onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .registers 2

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lorg/xbmc/kodi/XBMCOnFrameAvailableListener;->signalNewFrame(Landroid/graphics/SurfaceTexture;)V

    .line 19
    return-void
.end method
