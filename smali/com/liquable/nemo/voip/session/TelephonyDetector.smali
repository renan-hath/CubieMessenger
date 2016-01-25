.class public final Lcom/liquable/nemo/voip/session/TelephonyDetector;
.super Landroid/telephony/PhoneStateListener;
.source "TelephonyDetector.java"


# static fields
.field private static final logger:Lcom/liquable/nemo/util/Logger;


# instance fields
.field private final context:Landroid/content/Context;

.field private destroyed:Z

.field private final eventSink:Lcom/liquable/nemo/voip/event/EventSink;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/liquable/nemo/voip/event/EventSink",
            "<",
            "Lcom/liquable/nemo/voip/event/VoipEvent;",
            ">;"
        }
    .end annotation
.end field

.field private initialized:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-class v0, Lcom/liquable/nemo/voip/session/TelephonyDetector;

    invoke-static {v0}, Lcom/liquable/nemo/util/Logger;->getInstance(Ljava/lang/Class;)Lcom/liquable/nemo/util/Logger;

    move-result-object v0

    sput-object v0, Lcom/liquable/nemo/voip/session/TelephonyDetector;->logger:Lcom/liquable/nemo/util/Logger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/liquable/nemo/voip/event/EventSink;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/liquable/nemo/voip/event/EventSink",
            "<",
            "Lcom/liquable/nemo/voip/event/VoipEvent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 43
    .local p2, "eventSink":Lcom/liquable/nemo/voip/event/EventSink;, "Lcom/liquable/nemo/voip/event/EventSink<Lcom/liquable/nemo/voip/event/VoipEvent;>;"
    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/liquable/nemo/voip/session/TelephonyDetector;->context:Landroid/content/Context;

    .line 45
    iput-object p2, p0, Lcom/liquable/nemo/voip/session/TelephonyDetector;->eventSink:Lcom/liquable/nemo/voip/event/EventSink;

    .line 46
    return-void
.end method

.method private static findTelephoneManager(Landroid/content/Context;)Landroid/telephony/TelephonyManager;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 16
    const-string/jumbo v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method public static isIdle(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    .line 25
    invoke-static {p0}, Lcom/liquable/nemo/voip/session/TelephonyDetector;->findTelephoneManager(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    .line 26
    .local v0, "telephonyManager":Landroid/telephony/TelephonyManager;
    if-nez v0, :cond_1

    .line 30
    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized destroy()V
    .locals 3

    .prologue
    .line 49
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/liquable/nemo/voip/session/TelephonyDetector;->initialized:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    .line 64
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 52
    :cond_1
    :try_start_1
    iget-boolean v1, p0, Lcom/liquable/nemo/voip/session/TelephonyDetector;->destroyed:Z

    if-nez v1, :cond_0

    .line 55
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/liquable/nemo/voip/session/TelephonyDetector;->destroyed:Z

    .line 57
    iget-object v1, p0, Lcom/liquable/nemo/voip/session/TelephonyDetector;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/liquable/nemo/voip/session/TelephonyDetector;->findTelephoneManager(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    .line 58
    .local v0, "telephonyManager":Landroid/telephony/TelephonyManager;
    if-eqz v0, :cond_0

    .line 62
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 63
    sget-object v1, Lcom/liquable/nemo/voip/session/TelephonyDetector;->logger:Lcom/liquable/nemo/util/Logger;

    const-string/jumbo v2, "telephony detector destroyed"

    invoke-virtual {v1, v2}, Lcom/liquable/nemo/util/Logger;->debug(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 49
    .end local v0    # "telephonyManager":Landroid/telephony/TelephonyManager;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized initialize()V
    .locals 3

    .prologue
    .line 67
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/liquable/nemo/voip/session/TelephonyDetector;->destroyed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 82
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 70
    :cond_1
    :try_start_1
    iget-boolean v1, p0, Lcom/liquable/nemo/voip/session/TelephonyDetector;->initialized:Z

    if-nez v1, :cond_0

    .line 73
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/liquable/nemo/voip/session/TelephonyDetector;->initialized:Z

    .line 75
    iget-object v1, p0, Lcom/liquable/nemo/voip/session/TelephonyDetector;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/liquable/nemo/voip/session/TelephonyDetector;->findTelephoneManager(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    .line 76
    .local v0, "telephonyManager":Landroid/telephony/TelephonyManager;
    if-nez v0, :cond_2

    .line 77
    sget-object v1, Lcom/liquable/nemo/voip/session/TelephonyDetector;->logger:Lcom/liquable/nemo/util/Logger;

    const-string/jumbo v2, "the device does not support telephony"

    invoke-virtual {v1, v2}, Lcom/liquable/nemo/util/Logger;->warn(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 67
    .end local v0    # "telephonyManager":Landroid/telephony/TelephonyManager;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 81
    .restart local v0    # "telephonyManager":Landroid/telephony/TelephonyManager;
    :cond_2
    const/16 v1, 0x20

    :try_start_2
    invoke-virtual {v0, p0, v1}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 3
    .param p1, "state"    # I
    .param p2, "incomingNumber"    # Ljava/lang/String;

    .prologue
    .line 86
    sget-object v0, Lcom/liquable/nemo/voip/session/TelephonyDetector;->logger:Lcom/liquable/nemo/util/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "CallStateChanged, state:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " incommingNumber:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/util/Logger;->debug(Ljava/lang/String;)V

    .line 87
    packed-switch p1, :pswitch_data_0

    .line 98
    :goto_0
    :pswitch_0
    return-void

    .line 89
    :pswitch_1
    iget-object v0, p0, Lcom/liquable/nemo/voip/session/TelephonyDetector;->eventSink:Lcom/liquable/nemo/voip/event/EventSink;

    new-instance v1, Lcom/liquable/nemo/voip/event/VoipEvent;

    sget-object v2, Lcom/liquable/nemo/voip/event/VoipEvent$Type;->TELEPHONE_CALL:Lcom/liquable/nemo/voip/event/VoipEvent$Type;

    invoke-direct {v1, v2}, Lcom/liquable/nemo/voip/event/VoipEvent;-><init>(Lcom/liquable/nemo/voip/event/VoipEvent$Type;)V

    invoke-interface {v0, v1}, Lcom/liquable/nemo/voip/event/EventSink;->offer(Ljava/lang/Object;)Z

    goto :goto_0

    .line 87
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
