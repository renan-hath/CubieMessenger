.class public final enum Lcom/liquable/nemo/voip/event/DummyVoipEventSink;
.super Ljava/lang/Enum;
.source "DummyVoipEventSink.java"

# interfaces
.implements Lcom/liquable/nemo/voip/event/EventSink;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/liquable/nemo/voip/event/DummyVoipEventSink;",
        ">;",
        "Lcom/liquable/nemo/voip/event/EventSink",
        "<",
        "Lcom/liquable/nemo/voip/event/VoipEvent;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/liquable/nemo/voip/event/DummyVoipEventSink;

.field public static final enum INSTANCE:Lcom/liquable/nemo/voip/event/DummyVoipEventSink;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 4
    new-instance v0, Lcom/liquable/nemo/voip/event/DummyVoipEventSink;

    const-string/jumbo v1, "INSTANCE"

    invoke-direct {v0, v1, v2}, Lcom/liquable/nemo/voip/event/DummyVoipEventSink;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/voip/event/DummyVoipEventSink;->INSTANCE:Lcom/liquable/nemo/voip/event/DummyVoipEventSink;

    .line 3
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/liquable/nemo/voip/event/DummyVoipEventSink;

    sget-object v1, Lcom/liquable/nemo/voip/event/DummyVoipEventSink;->INSTANCE:Lcom/liquable/nemo/voip/event/DummyVoipEventSink;

    aput-object v1, v0, v2

    sput-object v0, Lcom/liquable/nemo/voip/event/DummyVoipEventSink;->$VALUES:[Lcom/liquable/nemo/voip/event/DummyVoipEventSink;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/liquable/nemo/voip/event/DummyVoipEventSink;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 3
    const-class v0, Lcom/liquable/nemo/voip/event/DummyVoipEventSink;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/voip/event/DummyVoipEventSink;

    return-object v0
.end method

.method public static values()[Lcom/liquable/nemo/voip/event/DummyVoipEventSink;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/liquable/nemo/voip/event/DummyVoipEventSink;->$VALUES:[Lcom/liquable/nemo/voip/event/DummyVoipEventSink;

    invoke-virtual {v0}, [Lcom/liquable/nemo/voip/event/DummyVoipEventSink;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/liquable/nemo/voip/event/DummyVoipEventSink;

    return-object v0
.end method


# virtual methods
.method public offer(Lcom/liquable/nemo/voip/event/VoipEvent;)Z
    .locals 1
    .param p1, "event"    # Lcom/liquable/nemo/voip/event/VoipEvent;

    .prologue
    .line 8
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic offer(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 3
    check-cast p1, Lcom/liquable/nemo/voip/event/VoipEvent;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/voip/event/DummyVoipEventSink;->offer(Lcom/liquable/nemo/voip/event/VoipEvent;)Z

    move-result v0

    return v0
.end method
