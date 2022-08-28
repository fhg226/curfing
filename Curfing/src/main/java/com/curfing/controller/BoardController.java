package com.curfing.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.curfing.domain.Criteria;
import com.curfing.domain.BoardVO;
import com.curfing.domain.HashtagVO;
import com.curfing.domain.MemberVO;
import com.curfing.domain.MenuVO;
import com.curfing.domain.PageDTO;
import com.curfing.domain.PageMakerDTO;
import com.curfing.domain.ReviewVO;
import com.curfing.service.BoardService;
import com.curfing.service.BoardServiceImpl;

import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@RequiredArgsConstructor
@Log4j
@RequestMapping("/board/*")
public class BoardController {
   
   private final BoardService service;
   
   // 여기 리스트 겹치는거 해결해야할듯

   
   @GetMapping("/register")
   public void register(@RequestParam("memberid") String memberid, Model model) {
      
      log.info("register......");
      
      model.addAttribute("member", service.getMember(memberid));
   }
   
   @PostMapping("/register")
   public String register(BoardVO board, MenuVO menu, HashtagVO hashtag, RedirectAttributes rttr) {
      log.info("register......" + board);
      
      long bno = service.register(board);
      
      service.regMenu(menu);
      service.regHashtag(hashtag);
      
      log.info("BNO ======> " + bno);
      
      rttr.addFlashAttribute("result", board.getBno());
      
      return "redirect:/board/list";
   }
   
   @GetMapping("/content")
   public void content(@RequestParam("bno") long bno, Model model,Criteria cri) {
      log.info("content......");
      model.addAttribute("cafe_r", service.get(bno));
      model.addAttribute("reviewList", service.getReviewList(bno));
      model.addAttribute("menu", service.getMenu(bno));
      model.addAttribute("hashtag_t", service.getHashtag(bno));
      model.addAttribute("upcount", service.updateCount(bno));
   
   }


   @GetMapping("/review")
   public void review(@RequestParam("bno") long bno, @RequestParam("userid") String userid, Model model) {
      log.info("review......");
      model.addAttribute("cafe_r", service.get(bno));
      model.addAttribute("user", service.getUser(userid));
      
   }
   
   @PostMapping("/review")
   public String review(ReviewVO review,    RedirectAttributes rttr) {
      log.info("review......" + review);
      
      long bno = service.regReview(review);
      log.info("BNO ======> " + bno);
      
      rttr.addFlashAttribute("result", review.getBno());
      
      return "redirect:/board/content?bno=" + bno;
   }
   
   @GetMapping("/jusoPopup")
   public void juso() {
      log.info("juso..");
   }
   
   @PostMapping("/jusoPopup")
   public void jusoReturn() {
      log.info("jusoReturn..");
   }
   
   @PostMapping("/remove")
   public String remove(@RequestParam("bno") long bno, RedirectAttributes rttr) {
      
      log.info("remove....." + bno);
      
         service.removeH(bno);
         service.removeM(bno);
         service.removeAllReview(bno);
         if(service.remove(bno)) {
            
            rttr.addFlashAttribute("result", "삭제 success");
         }
      return "redirect:/board/list";
      
   }
   
   @PostMapping("/removeReview")
   public String removeReview(@RequestParam("rno") long rno, @RequestParam("rbno") long bno, RedirectAttributes rttr) {
      
      log.info("removeReview....." + rno);
      
         
         if(service.removeReview(rno)) {
            
            rttr.addFlashAttribute("result", "삭제 success");
         }
      return "redirect:/board/content?bno=" + bno;
      
   }
   
   @GetMapping("/modify")
   public void get(@RequestParam("bno") long bno, Model model) {
      log.info("modify......");
      model.addAttribute("cafe_r", service.get(bno));
      model.addAttribute("menu", service.getMenu(bno));
      model.addAttribute("hashtag_t", service.getHashtag(bno));
   }
   
   @PostMapping("/modify")
   public String modify(BoardVO board, MenuVO menu, HashtagVO hashtag, RedirectAttributes rttr) {
      
      log.info("modify........");
      int count = service.modify(board);
      service.modifyM(menu);
      service.modifyH(hashtag);
      if(count == 1) {
         rttr.addFlashAttribute("result", "수정 성공");
      }
      log.info(board.getBno());
      return "redirect:/board/content?bno=" + board.getBno();
   }
   //모달 연습 이동
      @RequestMapping(value="/modal", method = RequestMethod.GET)
      public String modal() {
         log.info("modal 입니다.");
         return "/board/modal";
      }
      
      /*
       * //검색 결과 리스트
       * 
       * @GetMapping("/search") public void boardListGet(Model model, Criteria cri) {
       * 
       * log.info("boardListGET");
       * 
       * model.addAttribute("list", service.getListPaging(cri));
       * 
       * int total = service.getTotal(cri);
       * 
       * PageDTO pageMake = new PageDTO(total, cri);
       * 
       * model.addAttribute("pageMaker", pageMake);
       * 
       * }
       */
      
      
         //검색 결과 리스트
         @GetMapping("/list")
         public void list(Model model, Criteria cri) {
            
            log.info("list......");
            model.addAttribute("list", service.getList(cri, 1));
            model.addAttribute("list", service.getListPaging(cri));
            model.addAttribute("listWithReview", service.getListWithReview());
            
            int total = service.getTotal(cri);
            
            PageMakerDTO pageMake = new PageMakerDTO(cri, total);
            
            model.addAttribute("pageMaker", pageMake);
            
         }
      @GetMapping("/scope") //  별점
      public String sget(Criteria cri,Model model) {
         
         log.info("sget...");
         model.addAttribute("list", service.getList(cri, 2)); 
         model.addAttribute("listWithReview", service.getListWithReview());
         int total = service.getTotal(cri);
         model.addAttribute("pageMaker", new PageDTO(total, cri));
         return "/board/scope";
      }
      
      @GetMapping("/rising") // 요즘뜨는 
      public String rget(Criteria cri,Model model) {
         
         log.info("rget...");
         model.addAttribute("list", service.getList(cri, 3)); 
         model.addAttribute("listWithReview", service.getListWithReview());
         int total = service.getTotal(cri);
         model.addAttribute("pageMaker", new PageDTO(total, cri));
         return "/board/rising";
      }
      
      
      @GetMapping("/atmosphere")// 최신순 
      public String aget(Criteria cri,Model model) {
         
         log.info("rget...");
         model.addAttribute("list", service.getList(cri, 4)); 
         model.addAttribute("listWithReview", service.getListWithReview());
         int total = service.getTotal(cri);
         model.addAttribute("pageMaker", new PageDTO(total, cri));
         return "/board/atmosphere";
      }
      

      
      
      
   

      
      
}