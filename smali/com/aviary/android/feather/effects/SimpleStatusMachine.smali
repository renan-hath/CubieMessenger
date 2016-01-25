.class public Lcom/aviary/android/feather/effects/SimpleStatusMachine;
.super Ljava/lang/Object;
.source "SimpleStatusMachine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aviary/android/feather/effects/SimpleStatusMachine$OnStatusChangeListener;
    }
.end annotation


# static fields
.field public static INVALID_STATUS:I


# instance fields
.field private currentStatus:I

.field private mStatusListener:Lcom/aviary/android/feather/effects/SimpleStatusMachine$OnStatusChangeListener;

.field private previousStatus:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 5
    const/4 v0, -0x1

    sput v0, Lcom/aviary/android/feather/effects/SimpleStatusMachine;->INVALID_STATUS:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    sget v0, Lcom/aviary/android/feather/effects/SimpleStatusMachine;->INVALID_STATUS:I

    iput v0, p0, Lcom/aviary/android/feather/effects/SimpleStatusMachine;->currentStatus:I

    .line 8
    sget v0, Lcom/aviary/android/feather/effects/SimpleStatusMachine;->INVALID_STATUS:I

    iput v0, p0, Lcom/aviary/android/feather/effects/SimpleStatusMachine;->previousStatus:I

    .line 35
    return-void
.end method


# virtual methods
.method public getCurrentStatus()I
    .locals 1

    .prologue
    .line 32
    iget v0, p0, Lcom/aviary/android/feather/effects/SimpleStatusMachine;->currentStatus:I

    return v0
.end method

.method public setOnStatusChangeListener(Lcom/aviary/android/feather/effects/SimpleStatusMachine$OnStatusChangeListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/aviary/android/feather/effects/SimpleStatusMachine$OnStatusChangeListener;

    .prologue
    .line 13
    iput-object p1, p0, Lcom/aviary/android/feather/effects/SimpleStatusMachine;->mStatusListener:Lcom/aviary/android/feather/effects/SimpleStatusMachine$OnStatusChangeListener;

    .line 14
    return-void
.end method

.method public setStatus(I)V
    .locals 3
    .param p1, "newStatus"    # I

    .prologue
    .line 17
    iget v0, p0, Lcom/aviary/android/feather/effects/SimpleStatusMachine;->currentStatus:I

    if-eq p1, v0, :cond_1

    .line 18
    iget v0, p0, Lcom/aviary/android/feather/effects/SimpleStatusMachine;->currentStatus:I

    iput v0, p0, Lcom/aviary/android/feather/effects/SimpleStatusMachine;->previousStatus:I

    .line 19
    iput p1, p0, Lcom/aviary/android/feather/effects/SimpleStatusMachine;->currentStatus:I

    .line 21
    iget-object v0, p0, Lcom/aviary/android/feather/effects/SimpleStatusMachine;->mStatusListener:Lcom/aviary/android/feather/effects/SimpleStatusMachine$OnStatusChangeListener;

    if-eqz v0, :cond_0

    .line 22
    iget-object v0, p0, Lcom/aviary/android/feather/effects/SimpleStatusMachine;->mStatusListener:Lcom/aviary/android/feather/effects/SimpleStatusMachine$OnStatusChangeListener;

    iget v1, p0, Lcom/aviary/android/feather/effects/SimpleStatusMachine;->previousStatus:I

    iget v2, p0, Lcom/aviary/android/feather/effects/SimpleStatusMachine;->currentStatus:I

    invoke-interface {v0, v1, v2}, Lcom/aviary/android/feather/effects/SimpleStatusMachine$OnStatusChangeListener;->OnStatusChanged(II)V

    .line 29
    :cond_0
    :goto_0
    return-void

    .line 25
    :cond_1
    iget-object v0, p0, Lcom/aviary/android/feather/effects/SimpleStatusMachine;->mStatusListener:Lcom/aviary/android/feather/effects/SimpleStatusMachine$OnStatusChangeListener;

    if-eqz v0, :cond_0

    .line 26
    iget-object v0, p0, Lcom/aviary/android/feather/effects/SimpleStatusMachine;->mStatusListener:Lcom/aviary/android/feather/effects/SimpleStatusMachine$OnStatusChangeListener;

    invoke-interface {v0, p1}, Lcom/aviary/android/feather/effects/SimpleStatusMachine$OnStatusChangeListener;->OnStatusUpdated(I)V

    goto :goto_0
.end method
