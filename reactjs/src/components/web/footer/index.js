import { Link } from "react-router-dom";

const Footer = ()=>{
    return(
        <div className="container footer-content px-5">
            <button id="myBtn" title="Go to top" style={{display:"block"}}><i className="fa-solid fa-arrow-up"></i></button>
            <div className="row my-3 py-4 justify-content-between">
                <div className="col-12 col-sm-12 col-md-3 col-lg-3 col-xl-3">
                    <a href="wfds" className="logo justify-content-md-center">
                        HOME's
                    </a>
                    <div className="row">
                        <div className="col-12 pb-2"><b>Address:</b> apartment No.3, ABC street, Xuan Khanh commune, Ninh Kieu district, Can Tho city</div>
                        <div className="col-12 pb-2"><b>Hotline:</b> 1900 6777</div>
                        <div className="col-12 pb-2"><b>Email:</b> homes@company.vn</div>
                    </div>
                    <h5 className="pt-3">Social Media</h5>
                    <div className="is-divider small"></div>
                    <div className="row ps-3 link-social">
                    <a href="dsad" className="col-2">
                        <i className="fa-brands fa-facebook-f"></i>
                    </a>
                        <a href="adasd" className="col-2">
                            <i className="fa-brands fa-instagram"></i>
                        </a>
                        <a href="adasdsa" className="col-2">
                            <i className="fa-brands fa-twitter"></i>
                        </a>
                    </div>
                </div>
                <div className="col-12 col-sm-12 col-md-1 col-lg-1 col-xl-1">
                    <h5 className="pt-3">About</h5>
                    <div className="about row ps-3">
                        <div className="is-divider small"></div>
                        <Link className="col-12" to="home">Home</Link>
                        <Link className="col-12" to="about">About</Link>
                        <Link className="col-12" to="product">Product</Link>
                        <Link className="col-12" to="blog">Blog</Link>
                    </div>
                </div>
                <div className="col-12 col-sm-12 col-md-1 col-lg-1 col-xl-1">
                    <h5 className="pt-3">Categories</h5>
                    <div className="about row ps-3">
                        <div className="is-divider small"></div>
                        <Link className="col-12" to="home">Home</Link>
                        <Link className="col-12" to="about">About</Link>
                        <Link className="col-12" to="product">Product</Link>
                        <Link className="col-12" to="blog">Blog</Link>
                    </div>
                </div>
                <div className="col-12 col-sm-12 col-md-3 col-lg-3 col-xl-3">
                    <h5 className="pt-3">Message</h5>
                    <div className="is-divider small"></div>
                    <p>Leave your email to receive new decoration ideas and information, offers from <b>HOME's</b></p>
                    <div className="py-1 send-letter">
                        <div className="mb-3">
                            <label style={{color:"#ffffff"}} className="form-label">Email:</label>
                            <input type="email" className="form-control" placeholder="name@example.com"/>
                        </div>
                        <div class="mb-3">
                            <label style={{color:"#ffffff"}} class="form-label">Message:</label>
                            <textarea class="form-control" rows="3"></textarea>
                        </div>
                        <button type="submit">Submit</button>
                    </div>
                        
                </div>
          </div>
        </div>
    )
}
export default Footer;