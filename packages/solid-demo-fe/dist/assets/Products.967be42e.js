import{A as C,j as b,C as L,e as x,K as m,L as v,g as n,k as E,c as P,r as $,F as _,t as k,M as y,N as A}from"./index.3772ab1d.js";import{C as i,R as F}from"./Row.a1b01dff.js";import{C as l}from"./Card.33580881.js";const N=k('<div class="form-check"><input class="form-check-input" type="checkbox"><label class="form-check-label"></label></div>');function R(){const a=C.slice(),[s,u]=b([]);L(()=>{let e=[];a.forEach(t=>{t.category.forEach(c=>{e.some(function(r){return r.name===c})||e.push({name:c,checked:!1})})}),u(e)}),x(()=>{m(!0);let e=[];if(s().forEach(t=>{t.checked&&e.push(t.name)}),e.length===0)v(a);else{let t=a.filter(c=>{if(c.category.some(r=>e.includes(r)))return c});v(t)}m(!1)});function p(e){return u(s().map(t=>t.name===e.target.value?{...t,checked:e.target.checked}:{...t})),!1}return n(_,{get each(){return s()},children:e=>(()=>{const t=N.cloneNode(!0),c=t.firstChild,o=c.nextSibling;return c.addEventListener("change",p),E(o,()=>e.name),P(r=>{const d=e.name,f=e.name,h=e.checked,g=e.name;return d!==r._v$&&(c.value=r._v$=d),f!==r._v$2&&$(c,"id",r._v$2=f),h!==r._v$3&&(c.checked=r._v$3=h),g!==r._v$4&&$(o,"for",r._v$4=g),r},{_v$:void 0,_v$2:void 0,_v$3:void 0,_v$4:void 0}),t})()})}const T=k('<h3 class="mb-5">Products</h3>');function S({product:a}){const s=A();return n(i,{lg:"3",get children(){return n(l,{class:"product-tile",onclick:()=>{s(`/${a.slug}/`)},get children(){return[n(l.Img,{variant:"top",get src(){return a.image}}),n(l.Body,{get children(){return[n(l.Title,{get children(){return a.name}}),n(l.Text,{class:"lt-clamp-3",get children(){return a.description}})]}})]}})}})}function B(){return n(F,{class:"mb-5 mt-5",get children(){return[T.cloneNode(!0),n(i,{lg:"3",get children(){return n(R,{})}}),n(i,{lg:"9",class:"d-flex flex-wrap gap-4",children:n(_,{each:y,children:a=>n(S,{product:a})})})]}})}export{B as default};