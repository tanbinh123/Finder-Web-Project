package com.an.finder.restcontroller;

import com.an.finder.entity.Like;
import com.an.finder.entity.User;
import com.an.finder.service.LikeService;
import com.an.finder.service.UserService;
import com.an.finder.util.ValidationResponse;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;
import java.util.List;

@Controller
public class MatchRestController {
    @Autowired
    LikeService likeService;

    @Autowired
    UserService userService;

    @PostMapping(value = "like", consumes = { MediaType.APPLICATION_JSON_VALUE})
    public @ResponseBody
    ValidationResponse like(HttpSession session, Model model, @RequestBody @Valid User user , BindingResult result, HttpServletRequest request) {
        User currentUser = (User) session.getAttribute("user");
        System.out.println(currentUser);
        System.out.println("aaaa");
        ValidationResponse res = new ValidationResponse();
        try {
            User theUser=userService.findUserById(user.getId());
            System.out.println(theUser);
            Like like = new Like();
            like.setUser(currentUser);
            like.setUser_liked(user.getId());
           /* like.setMatches();*/
            likeService.saveLike(like);
            res.setStatus("SUCCESS");
        } catch (Exception e) {
            System.out.println(e);
            res.setStatus("FAIL");
        }
        System.out.println(res);
        return res;
    }
}
