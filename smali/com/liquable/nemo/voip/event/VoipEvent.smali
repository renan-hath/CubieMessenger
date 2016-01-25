.class public Lcom/liquable/nemo/voip/event/VoipEvent;
.super Ljava/lang/Object;
.source "VoipEvent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/liquable/nemo/voip/event/VoipEvent$Type;
    }
.end annotation


# instance fields
.field private final type:Lcom/liquable/nemo/voip/event/VoipEvent$Type;


# direct methods
.method public constructor <init>(Lcom/liquable/nemo/voip/event/VoipEvent$Type;)V
    .locals 0
    .param p1, "type"    # Lcom/liquable/nemo/voip/event/VoipEvent$Type;

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/liquable/nemo/voip/event/VoipEvent;->type:Lcom/liquable/nemo/voip/event/VoipEvent$Type;

    .line 31
    return-void
.end method


# virtual methods
.method public getType()Lcom/liquable/nemo/voip/event/VoipEvent$Type;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/liquable/nemo/voip/event/VoipEvent;->type:Lcom/liquable/nemo/voip/event/VoipEvent$Type;

    return-object v0
.end method
