.class public interface abstract Lcom/liquable/nemo/message/model/ISecret;
.super Ljava/lang/Object;
.source "ISecret.java"

# interfaces
.implements Lcom/liquable/nemo/message/model/IDomainMessage;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/liquable/nemo/message/model/ISecret$State;
    }
.end annotation


# virtual methods
.method public abstract isAutoCountDown(Ljava/lang/String;)Z
.end method

.method public abstract isState(Lcom/liquable/nemo/message/model/ISecret$State;)Z
.end method

.method public abstract open()V
.end method

.method public abstract timeToExpireInMilli()J
.end method
