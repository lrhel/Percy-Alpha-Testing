-- プランキッズ・パルス
-- Prankids Pulse 
function c100410014.initial_effect(c)
	--indes
	local e1=Effect.CreateEffect(c)
	e1:SetType(EFFECT_TYPE_SINGLE+EFFECT_TYPE_TRIGGER_O)
	e1:SetCode(EVENT_BE_MATERIAL)
	e1:SetProperty(EFFECT_FLAG_DAMAGE_STEP+EFFECT_FLAG_DELAY)
	e1:SetCondition(c100410014.indcon)
	e1:SetOperation(c100410014.indop)
	c:RegisterEffect(e1)
end
function c100410014.ddcon(e,tp,eg,ep,ev,re,r,rp)
	local c=e:GetHandler()
	local rc=c:GetReasonCard()
	return c:IsLocation(LOCATION_GRAVE) and ((r & REASON_LINK == REASON_LINK) or (r & REASON_FUSION == REASON_FUSION))
		and rc:IsSetCard(0x226) and (rc:IsType(TYPE_LINK) or rc:IsType(TYPE_FUSION))
end
function c100410014.atktg(e,tp,eg,ep,ev,re,r,rp,chk)
	if chk==0 then return true end
	Duel.SetOperationInfo(0,CATEGORY_TOGRAVE,nil,1,tp,LOCATION_DECK)
end
function c100410014.tgfilter(c)
	return c:IsSetCard(0x226) and c:IsAbleToGrave() and not c:IsCode(100410014)
end
function c100410014.spfilter(c,e,tp)
	return c:IsSetCard(0x226) and c:IsCanBeSpecialSummoned(e,0,tp,false,false,POS_FACEUP_DEFENSE)  and not c:IsCode(100410014)
end
function c100410014.atkop(e,tp,eg,ep,ev,re,r,rp)
	Duel.Hint(HINT_SELECTMSG,tp,HINTMSG_TOGRAVE)
	local g=Duel.SelectMatchingCard(tp,c100410014.tgfilter,tp,LOCATION_DECK,0,1,1,nil)
	local g2=Duel.GetMatchingGroup(c100410014.spfilter,tp,LOCATION_DECK,0,g:GetFirst(),e,tp)
	if g:GetCount()>0 and Duel.SendtoGrave(g,REASON_EFFECT)~=0 and g:GetFirst():IsLocation(LOCATION_GRAVE)
	and g2:GetCount()>0 and Duel.SelectYesNo(tp,aux.Stringid(100410014,0)) then
		Duel.BreakEffect()
		Duel.Hint(HINT_SELECTMSG,tp,HINTMSG_SPSUMMON)
			local sg=g2:Select(tp,1,1,nil)
			Duel.SpecialSummon(sg,0,tp,tp,false,false,POS_FACEUP_DEFENSE)
	end
end